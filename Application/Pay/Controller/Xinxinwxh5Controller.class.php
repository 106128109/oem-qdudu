<?php
/**
 * Created by PhpStorm.
 * User: gaoxi
 * Date: 2017-05-18
 * Time: 11:33
 */
namespace Pay\Controller;

class Xinxinwxh5Controller extends PayController
{
    public function __construct()
    {
        parent::__construct();
    }

    //支付1
    public function Pay($array)
    {
		$orderid     = I("request.pay_orderid");
        $body        = I('request.pay_productname');

        $parameter = array(
            'code'         => 'Xinxinwxh5', // 通道名称
            'title'        => '鑫鑫微信H5',
            'exchange'     => 1, // 金额比例
            'gateway'      => '',
            'orderid'      => '',
            'out_trade_id' => $orderid,
            'body'         => $body,
            'channel'      => $array,
        );

        // 订单号，可以为空，如果为空，由系统统一的生成
        $return = $this->orderadd($parameter);
        $return['subject'] = $body;

        if($return['unlockdomain']) {
            $rpay_url = $return['unlockdomain'];
        } else {
            $rpay_url = $this->_site;
        }
        $notifyurl   = $rpay_url . 'Pay_'.$parameter['code'].'_notifyurl.html'; //异步通知
        $callbackurl = $rpay_url . 'Pay_'.$parameter['code'].'_callbackurl.html'; //返回通知
		
		$data = [
			'account_id' => $return['mch_id'],
			'content_type' => 'json',
			'thoroughfare' => $return['appid'],
			'out_trade_no' => $return['orderid'],
			'amount' => sprintf('%.2f', $return['amount']),
			'callback_url' => $notifyurl,
			'success_url' => $callbackurl,
			'error_url' => $callbackurl,
			
			
			'ip' => $this->getIP(),
		];
		
		ksort($data);
		
		$signText = '';
		
        
        $signText = '';
        foreach($data as $k => $v) {
            if($k == 'sign' || strlen($v) <= 0) continue;
            
            $signText .= $k.'='.$v.'&';
        }
        
        $signText = $signText.'key='.$return['signkey'];
        $data['sign'] = strtoupper(md5($signText));
        
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $return['gateway']);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            'Content-Type' => "application/x-www-form-urlencoded; charset=utf-8"
        ]);

        $output = curl_exec($ch);
        if (curl_errno($ch)){
            print curl_error($ch);
        } else {
            curl_close($ch);
        }

        curl_close($ch);
        
        if(empty($output)) exit('上游无响应');
        
        $result = json_decode($output, true);
        if($result['code'] != '1') exit($result['msg']);
        
        header('Location: '.$result['data']['payurl']);
    }
    
    
    public function post($url, $data){//file_get_content
        

        $opts = array('http' =>
            array(
                'method'  => 'POST',
                'header'  => 'Content-type: application/x-www-form-urlencoded',
                'content' => $data,
                'timeout'=>10,//单位秒
            )
        );

        $context = stream_context_create($opts);
        $result = file_get_contents($url, false, $context);
        return $result;
    }
    
    private function mksign($data, $key){
        
        ksort($data);
        //$token='fcZeqScSrlX44mRJXbVMgxvYGCNC3Xpk';
        $token = $key;
       // $params = http_build_query($data);
        
        //$sign=md5($params.$token);
        //签名步骤二：使用URL键值对的格式（即key1=value1&key2=value2…）拼接成字符串
        $string = $this->_to_url_params($data);
        //签名步骤三：在string后加入KEY
        $string = $string . $token;
        //签名步骤四：MD5加密
        $string = md5($string);
        //签名步骤五：所有字符转为小写
        //$result = strtolower($string);
        return $string;
        
    }
    
     /**
     * @param $data
     *
     * @return string
     */
    private function _to_url_params($data)
    {
        $buff = "";
        foreach ($data as $k => $v)
        {
            if($k != "sign" && $v != "" && !is_array($v)){
                $buff .= $k . "=" . $v . "&";
            }
        }

        $buff = trim($buff, "&");
        return $buff;
    }

    //同步通知
    public function callbackurl()
    {
        $Order = M("Order");
        $pay_status = $Order->where(['pay_orderid' => $_REQUEST["order_id"]])->getField("pay_status");
        if($pay_status <> 0){
            $this->EditMoney($data['merReqNo'], 'Xinxinwxh5', 1);

            exit('交易成功！如未到账请联系客服');
        }else{
            exit("交易成功！");
        }

    }

    //异步通知
    public function notifyurl()
    {
        $log = file_get_contents('php://input');
        file_put_contents('Xinxinwxh5.txt', $log.PHP_EOL, FILE_APPEND);
        
        $data = $_POST;
        
        if($data['status']!='1') exit('error');
        
        $Order = M("Order");
        $key = $Order->where(['pay_orderid' => $data['orderId']])->getField("key");
        
        ksort($data);
        
        $signText = '';
        foreach($data as $k => $v) {
            if($k == 'sign' || strlen($v) <= 0) continue;
            
            $signText .= $k.'='.urldecode($v).'&';
        }
        
        $signText = $signText.'key='.$key;
        
        $sign = strtoupper(md5($signText));
        
        if($sign != strtoupper($data['sign'])) exit('sign error');
        
        $this->EditMoney($data['orderId'], 'Xinxinwxh5', 0);
        
        exit('success');
           
        // $content = $_POST['content'];
        // if(strlen($content) <= 0) exit;
        
        

    //     vendor('jiami.key');
        
    //     $Aes= new \aes;
    //     $keydata=json_decode($Aes->decrypt($content),true);
    //     if(!is_array($keydata)) exit;

    //     $sign=$Aes->getpaysign($keydata);
    //     if($sign != $keydata['sign']) exit('sign error');
    //     if($keydata['status'] != 'ok') exit('trade fail');

    //   	$this->EditMoney($keydata['order_id'], 'Xinxinwxh5', 0);

    //     exit("ok");
    }

    function getIP() { 
        if (isset($_SERVER)) { 
        if (isset($_SERVER['HTTP_X_FORWARDED_FOR'])) { 
        $realip = $_SERVER['HTTP_X_FORWARDED_FOR']; 
        } elseif (isset($_SERVER['HTTP_CLIENT_IP'])) { 
        $realip = $_SERVER['HTTP_CLIENT_IP']; 
        } else { 
        $realip = $_SERVER['REMOTE_ADDR']; 
        } 
        } else { 
        if (getenv("HTTP_X_FORWARDED_FOR")) { 
        $realip = getenv( "HTTP_X_FORWARDED_FOR"); 
        } elseif (getenv("HTTP_CLIENT_IP")) { 
        $realip = getenv("HTTP_CLIENT_IP"); 
        } else { 
        $realip = getenv("REMOTE_ADDR"); 
        } 
        } 
        return $realip; 
    }
    
    
    private function sendForm($url,$data,$referer){
        var_dump($data);
        $headers['Content-Type'] = "application/x-www-form-urlencoded; charset=utf-8";
        $headerArr = array();
        foreach( $headers as $n => $v ) {
            $headerArr[] = $n .':' . $v;
        }
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headerArr);
        curl_setopt($ch, CURLOPT_REFERER, "http://".$referer."/");
        $data = curl_exec($ch);
        curl_close($ch);
        return $data;
    }
}