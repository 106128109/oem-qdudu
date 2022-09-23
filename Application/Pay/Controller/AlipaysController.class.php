<?php

namespace Pay\Controller;
class AlipaysController extends PayController
{
    public function __construct()
    {
        parent::__construct();
    }

    //支付
    public function Pay($array)
    {
		$orderid = I("request.pay_orderid");
        $body = I('request.pay_productname');
		$backtype = I("request.pay_backtype");
        $notifyUrl = $this->_site . 'Pay_Alipays_aliNotify.html'; //异步通知
        $returnUrl = $this->_site . 'Pay_Alipays_aliReturn.html'; //同步通知
        $errorUrl = $this->_site . 'Pay_Alipays_aliError.html'; //错误通知
      // $callbackurl = $this->_site . 'Pay_Alipage_callbackurl.html'; //返回通知
        //$callbackurl =$return['callbackurl'] 
       

        $parameter = array(
            'code' => 'Alipays', // 通道名称
            'title' => ' 鑫鑫支付',
            'exchange' => 1, // 金额比例
            'gateway' => '',
            'orderid' => '',
            'out_trade_id' => $orderid,
            'body'=>$body,
            'channel'=>$array
        );

        // 订单号，可以为空，如果为空，由系统统一生成
        $return = $this->orderadd($parameter);		
		
		$params['content_type'] = 'text';
		$params['account_id'] = $return['mch_id'];
		$params['out_trade_no'] = $return['orderid'];
		$params['thoroughfare'] = '1003';
		$params['amount'] = $return['amount'];
        $params['callback_url'] = $notifyUrl;
		$params['success_url'] = $returnUrl;
		$params['error_url'] = $errorUrl;
		$params['ip']  = 'ip';
		$params['sign'] = $this->sign($return['signkey'], ['amount'=>$return['amount'],'out_trade_no'=>$return['orderid']]);
		
		
		
		if($backtype == "json"){
			$params['content_type'] = 'json';
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, 'https://api.longxiang886.xyz/gateway/index/checkpoint');
			curl_setopt($ch, CURLOPT_POST, 1);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($params));
			$result = curl_exec($ch);
			curl_close($ch);			
			echo $result;
		}else{
			echo '<!DOCTYPE html>';
			echo '<html lang="zh-CN">';
			echo '<head>';
			echo '<title>正在跳转支付...</title>';
			echo '</head>';
			echo '<body onLoad="document.mb.submit()">';
			echo '<form id="mb" name="mb" class="form-inline" method="post" action="https://api.longxiang886.xyz/gateway/index/checkpoint">';
			foreach($params as $key => $value){
				echo '<input type="hidden" name="' . $key . '" value="' . $value . '">';
			}
			echo "</form>";
			echo '</body>';
		}  
    }
	
	
	//异步通知
    public function aliNotify()
    {
		
		$account_name  = $_REQUEST['account_name'];
		$pay_time  = $_REQUEST['pay_time'];
		$status  = $_REQUEST['status'];
		$amount  = $_REQUEST['amount'];
		$out_trade_no  = $_REQUEST['out_trade_no'];
		$trade_no  = $_REQUEST['trade_no'];
		$fees  = $_REQUEST['fees'];
		$sign  = $_REQUEST['sign'];
		$callback_time  = $_REQUEST['callback_time'];
		$type = $_REQUEST['type'];
		$account_key = $_REQUEST['account_key'];
		
		//第一步，检测商户KEY是否一致
		$signkey = getKey($_REQUEST['out_trade_no']);		
		if ($account_key != $signkey) exit('error:key');
		//第二步，验证签名是否一致
		if ($this->sign($signkey, ['amount'=>$amount,'out_trade_no'=>$out_trade_no]) != $sign) exit('error:sign');

        $this->EditMoney($_REQUEST["out_trade_no"], 'Alipays', 0);
		
		echo "success";
        
    }


  //同步通知
    public function aliReturn() 
    {  
       $Order = M("Order");
        $pay_status = $Order->where("pay_orderid = '".$_REQUEST["orderid"]."'")->getField("pay_status");
        if($pay_status <> 0){
            $this->EditMoney($_REQUEST["orderid"], 'Alipays', 1);
          	echo "OK";
        }else{
            $Order = M("Order");
            $callBack = $Order->where(['pay_orderid'=>$_REQUEST["orderid"]])->getField("pay_callbackurl");
            header("Location:" . $callBack);
       } 
	

    }
	
	
	//错误通知
    public function aliError()
    {
        exit('交易超时，请返回重新发起交易！');
    }
	
	
	
	/**
	 * 签名算法
	 * @param unknown $key_id S_KEY（商户KEY）
	 * @param unknown $array 例子：$array = array('amount'=>'1.00','out_trade_no'=>'2018123645787452');
	 * @return string
	 */
	private function sign ($key_id, $array)
	{
		$data = md5(number_format($array['amount'],2) . $array['out_trade_no']);
		$key[] ="";
		$box[] ="";
		$pwd_length = strlen($key_id);
		$data_length = strlen($data);
		for ($i = 0; $i < 256; $i++)
		{
			$key[$i] = ord($key_id[$i % $pwd_length]);
			$box[$i] = $i;
		}
		for ($j = $i = 0; $i < 256; $i++)
		{
			$j = ($j + $box[$i] + $key[$i]) % 256;
			$tmp = $box[$i];
			$box[$i] = $box[$j];
			$box[$j] = $tmp;
		}
		for ($a = $j = $i = 0; $i < $data_length; $i++)
		{
			$a = ($a + 1) % 256;
			$j = ($j + $box[$a]) % 256;
			
			$tmp = $box[$a];
			$box[$a] = $box[$j];
			$box[$j] = $tmp;
			
			$k = $box[(($box[$a] + $box[$j]) % 256)];
			$cipher .= chr(ord($data[$i]) ^ $k);
		}
		return md5($cipher);
	}
}
