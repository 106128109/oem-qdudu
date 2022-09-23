<?php
namespace Payment\Controller;

use Org\Util\Shande\Handle;

class ShanDeController extends PaymentController
{

    public function __construct()
    {
        parent::__construct();
    }
	
	private function aes_generate($size)
	{
		$str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
		$arr = array();
		for ($i = 0; $i < $size; $i++) {
			$arr[] = $str[mt_rand(0, 61)];
		}

		return implode('', $arr);
	}

	private function loadX509Cert($path)
	{
		try {
			$file = file_get_contents($path);
			if(!$file) {
				throw new \Exception('证书加载失败');
			}
			
			$cert = chunk_split(base64_encode($file), 64, "\n");
			$cert = "-----BEGIN CERTIFICATE-----\n" . $cert . "-----END CERTIFICATE-----\n";
			
			$res = openssl_pkey_get_public($cert);
			$detail = openssl_pkey_get_details($res);
			
			openssl_free_key($res);
			
			if (!$detail) {
				throw new \Exception('loadX509Cert::openssl_pkey_get_details ERROR');
			}

			return $detail['key'];
		} catch(\Exception $e) {
			throw $e;
		}
	}

	private function loadPK12Cert($path, $password)
	{
		try {
			$file = file_get_contents($path);
			if (!$file) {
				throw new \Exception('loadPk12Cert::file_get_contents');
			}

			if (!openssl_pkcs12_read($file, $cert, $password)) {
				throw new \Exception('loadPk12Cert::openssl_pkcs12_read ERROR');
			}
			
			return $cert['pkey'];			
		} catch(\Exception $e) {
			throw $e;
		}
	}

	private function RSAEncryptByPub($plainText, $puk)
	{
		if (!openssl_public_encrypt($plainText, $cipherText, $puk, OPENSSL_PKCS1_PADDING)) {
			throw new \Exception('AESKey 加密错误');
		}

		return base64_encode($cipherText);
	}

	private function AESEncrypt($plainText, $key)
	{
		$plainText = json_encode($plainText);
		$result = openssl_encrypt($plainText, 'AES-128-ECB', $key, 1);

		if (!$result) {
			throw new \Exception('报文加密错误');
		}

		return base64_encode($result);
	}

	private function sign($plainText, $path)
	{
		$plainText = json_encode($plainText);
		try {
			$resource = openssl_pkey_get_private($path);
			$result = openssl_sign($plainText, $sign, $resource);
			openssl_free_key($resource);

			if (!$result) {
				throw new \Exception('签名出错' . $plainText);
			}

			return base64_encode($sign);
		} catch (\Exception $e) {
			throw $e;
		}
	}
	
	private function RSADecryptByPri($cipherText, $prk)
    {
        if (!openssl_private_decrypt(base64_decode($cipherText), $plainText, $prk, OPENSSL_PKCS1_PADDING)) {
            throw new \Exception('AESKey 解密错误');
        }
    
        return (string)$plainText;
    }
    
    private function AESDecrypt($cipherText, $key)
    {
        $result = openssl_decrypt(base64_decode($cipherText), 'AES-128-ECB', $key, 1);
    
        if (!$result) {
            throw new \Exception('报文解密错误', 2003);
        }
    
        return $result;
    }
    
    private function verify($plainText, $sign, $path)
    {
        $resource = openssl_pkey_get_public($path);
        $result = openssl_verify($plainText, base64_decode($sign), $resource);
        openssl_free_key($resource);
    
        if (!$result) {
            throw new \Exception('签名验证未通过,plainText:' . $plainText . '。sign:' . $sign, '02002');
        }
    
        return $result;
    }
   //实时付款接口
    public function PaymentExec($data, $config)
    {
		$amount = sprintf('%.2f', $data['money']) * 100;
		$amount_str = str_pad($amount, 12, '0', STR_PAD_LEFT);
		
		$tranTime = date('YmdHis');
		
        $body = [
			'version' => '01',
			'productId' => '00000004',
			'tranTime' => $tranTime,
			'orderCode' => $data['orderid'],
			'timeOut' => '',
			'tranAmt' => $amount_str,
			'currencyCode' => '156',
			'accAttr' => '0',
			'accType' => '4',
			'accNo' => $data['banknumber'],
			'accName' => $data['bankfullname'],
			'provNo' => '',
			'cityNo' => '',
			'bankName' => $data['bankname'],
			'bankType' => '',
			'remark' => '工资代发',
			'payMode' => '1',
			'channelType' => '07',
			'extendParams' => '',
			'reqReserved' => '',
			'extend' => '',
			'phone' => ''
		];
		
		$aesKey = $this->aes_generate(16);
		
		$pubKey = $this->loadX509Cert($config['public_key']);
		
		$priKey = $this->loadPK12Cert($config['private_key'], $config['signkey']);
		
		$encryptKey = $this->RSAEncryptByPub($aesKey, $pubKey);
		$encryptData = $this->AESEncrypt($body, $aesKey);
		$sign = $this->sign($body, $priKey);
		
		$post_data = [
			'transCode' => 'RTPM',
			'accessType' => '0',
			'merId' => $config['mch_id'],
			'plId' => '',
			'encryptKey' => $encryptKey,
			'encryptData' => $encryptData,
			'sign' => $sign
		];
		
		$ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, 'https://caspay.sandpay.com.cn/agent-main/openapi/agentpay');
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post_data));
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
			'Content-Type: application/x-www-form-urlencoded'
		));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		
        $output = curl_exec($ch);
		
        curl_close($ch);

        if (!$output) {
            $return = ['status' => 3, 'msg' => '上游无响应'];
            
            return $return;
        }
        
        parse_str($output, $arr);
        
        try {
            $decryptAesKey = $this->RSADecryptByPri($arr['encryptKey'], $priKey);
            $decryptPlainText = $this->AESDecrypt($arr['encryptData'], $decryptAesKey);
            
            $ret = $this->verify($decryptPlainText, $arr['sign'], $pubKey);
            if(!$ret) {
                $return = ['status' => 3, 'msg' => '响应数据被篡改'];
            
                return $return;
            }
            
            $result = json_decode($decryptPlainText, true);
            if($result['respCode'] != '0000') {
                $return = ['status' => 3, 'msg' => $result['respDesc']];
            
                return $return;
            }
            
            // 更新交易时间到订单
            M('Wttklist')->where(['id' => $data['id']])->save(['additional' => $tranTime]);
            
            $return = ['status' => 1, 'msg' => '处理中！'];
            
            return $return;
        } catch(\Exception $e) {
            $return = ['status' => 3, 'msg' => '解析响应程序异常'];
            
            return $return;
        }
    }
    //实时订单查询
    public function PaymentQuery($data, $config)
    {
        $body = [
			'version' => '01',
			'productId' => '00000004',
			'tranTime' => $data['additional'],
			'orderCode' => $data['orderid'],
			'extend' => ''
		];
		
		$aesKey = $this->aes_generate(16);
		
		$pubKey = $this->loadX509Cert($config['public_key']);
		
		$priKey = $this->loadPK12Cert($config['private_key'], $config['signkey']);
		
		$encryptKey = $this->RSAEncryptByPub($aesKey, $pubKey);
		$encryptData = $this->AESEncrypt($body, $aesKey);
		$sign = $this->sign($body, $priKey);
		
		$post_data = [
			'transCode' => 'ODQU',
			'accessType' => '0',
			'merId' => $config['mch_id'],
			'plId' => '',
			'encryptKey' => $encryptKey,
			'encryptData' => $encryptData,
			'sign' => $sign
		];
		
		$ch = curl_init();
		//实时订单查询
        curl_setopt($ch, CURLOPT_URL, 'https://caspay.sandpay.com.cn/agent-main/openapi/queryOrder');
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post_data));
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
			'Content-Type: application/x-www-form-urlencoded'
		));
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		
        $output = curl_exec($ch);
		
        curl_close($ch);

        if (!$output) {
            $return = ['status' => 3, 'msg' => '上游无响应'];
            
            return $return;
        }
        
        parse_str($output, $arr);
        
        try {
            $decryptAesKey = $this->RSADecryptByPri($arr['encryptKey'], $priKey);
            $decryptPlainText = $this->AESDecrypt($arr['encryptData'], $decryptAesKey);
        
            $log = '提交参数:'.http_build_query($post_data).PHP_EOL;
            $log .= '返回结果:'.$output.PHP_EOL;
            $log .= '解析结果:'.$decryptPlainText.PHP_EOL;
            
            file_put_contents('shande.log', $log.PHP_EOL, 8);
            
            $ret = $this->verify($decryptPlainText, $arr['sign'], $pubKey);
            if(!$ret) {
                $return = ['status' => 3, 'msg' => '响应数据被篡改'];
            
                return $return;
            }
            
            $result = json_decode($decryptPlainText, true);
            if($result['respCode'] != '0000') {
                $return = ['status' => 3, 'msg' => $result['respDesc']];
            
                return $return;
            }
            
            if(!array_key_exists('resultFlag', $result) || $result['resultFlag'] != '0') {
                $return = ['status' => 3, 'msg' => '上游响应订单不成功'];
            
                return $return;
            }
            
            $return = ['status' => 2, 'msg' => '处理成功！'];
            
            return $return;
        } catch(\Exception $e) {
            $return = ['status' => 3, 'msg' => '解析响应程序异常'];
            
            return $return;
        }
    }
    
    
    //商户余额查询接口
    public function queryBalance()
    {
        $id = I('post.id', '11');
        if (IS_AJAX) {
            $config = $this->findPaymentType($id);

            $cert = [
                'pubPath' => $config['public_key'],
                'priPath' => $config['private_key'],
                'certPwd' => $config['signkey'],
            ];
            $handle = new handle($cert);
            $params = [
                'transCode' => 'MBQU',
                'merId'     => $config['mch_id'],
                'url'       => 'https://caspay.sandpay.com.cn/agent-main/openapi/queryBalance',
                'pt'        => [
                    'orderCode' => date('YmdHis'),
                    'version'   => '01',
                    'productId' => '00000004',
                    'tranTime'  => date('YmdHis'),
                ],
            ];
            $result = $handle->execute($params);
            if ($result) {
                $result            = json_decode($result, true);
                $result['balance'] = trim($result['balance'], '+');
                $result['balance'] = bcdiv($result['balance'], 100, 2);

                $data = [
                    [
                        'key'   => '账户余额',
                        'value' => $result['balance'] . '元',
                    ],
                ];
                $this->assign('data', $data);
                $html = $this->fetch('Public/queryBalance');
                $this->ajaxReturn(['status' => 1, 'msg' => '成功', 'data' => $html]);

            }
            $this->ajaxReturn(['status' => 0, 'msg' => '网络延迟']);
        }

    }
}
