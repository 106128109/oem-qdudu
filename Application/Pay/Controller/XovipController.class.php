<?php

namespace Pay\Controller;
class XovipController extends PayController
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
        $notifyurl = $this->_site . 'Pay_Xovip_notifyurl.html'; //异步通知
        $callbackurl = $this->_site . 'Pay_Xovip_callbackurl.html'; //返回通知

        $orderid = I("request.pay_orderid", '');

        $body = I('request.pay_productname', '');

        $parameter = [
            'code'         => 'Xovip',
            'title'        => 'Xovip支付宝',
            'exchange'     => 1, // 金额比例
            'gateway'      => '',
            'orderid'      => '',
            'out_trade_id' => $orderid, //外部订单号
            'channel'      => $array,
            'body'         => $body,
        ];

        //支付金额
        $pay_amount = I("request.pay_amount", 0);

        // 订单号，可以为空，如果为空，由系统统一的生成
        $return = $this->orderadd($parameter);
        //如果生成错误，自动跳转错误页面
        $return["status"] == "error" && $this->showmessage($return["errorcontent"]);
        //跳转页面，优先取数据库中的跳转页面
        $return["notifyurl"] || $return["notifyurl"] = $this->_site . 'Pay_Xovip_notifyurl.html';
        $return['callbackurl'] || $return['callbackurl'] = $this->_site . 'Pay_Xovip_callbackurl.html';
        error_reporting(0);
        $content_type = 'json';
        //商户ID->到平台首页自行复制粘贴
        $account_id = $return["mch_id"];
        //S_KEY->商户KEY，到平台首页自行复制粘贴，该参数无需上传，用来做签名验证和回调验证，请勿泄露
        $s_key =  $return['signkey']; //密钥 
        //订单号码->这个是四方网站发起订单时带的订单信息，一般为用户名，交易号，等字段信息
        $out_trade_no = $return['orderid'];
        //支付通道：支付宝（公开版）：alipay_auto、微信（公开版）：wechat_auto、服务版（免登陆/免APP）：service_auto
        $thoroughfare = $return['appid'];
        //支付金额
        $amount = number_format($return['amount'],2,'.',''); 

        //异步通知接口url->用作于接收成功支付后回调请求
        $callback_url = $return["notifyurl"];
        //支付成功后自动跳转url
        $success_url = $return['callbackurl'];
        //支付失败或者超时后跳转url
        $error_url = $return['callbackurl'];
        
        
         //时间戳
        
        





        $native = [
            "account_id"      => $account_id,
            "content_type"        => $content_type,
            "thoroughfare"      => $thoroughfare,
            "out_trade_no"      => $out_trade_no,
            "callback_url"    => $callback_url,
            "success_url"        => $success_url,
            "error_url"          => $error_url,
            "amount"          => $amount,
            "timestamp" => date('Y-m-d H:i:s'),
            "ip" => $this->getIP(),
        ];
        
        //生成签名
        $sign = $this->xovipsign($s_key, $native);
        $native['sign'] = $sign;
        // echo json_encode($sign);
        // exit();
        
        $tjurl='https://api.longxiang886.xyz/gateway/index/checkpoint.do';
        
        $ch = curl_init();

        curl_setopt($ch, CURLOPT_URL, $tjurl);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $native);
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
        if($result['code'] != 200) exit($result['msg']);
        echo json_encode(['code' => '0', 'msg' => '成功', 'data' => $result['data']['pay_url']]);
        exit();
    }

    public function xovipsign($key_id, $data)
    {
        $data = array_filter($data);
        ksort($data);
        $string_a = http_build_query($data);
        $string_a = urldecode($string_a);
        $string_sign_temp = $string_a . "&key=" . $key_id;
        $sign = md5($string_sign_temp);
        return $sign;
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



    //同步通知
    public function callbackurl()
    {
        $Order = M("Order");
        $pay_status = $Order->where(['pay_orderid' => $_GET["orderid"]])->getField("pay_status");
        if($pay_status <> 0){
            $this->EditMoney($_GET["orderid"], 'Xovip', 1);
        }else{
            exit("交易成功");
        }

    }

    //异步通知
    public function notifyurl(){
         $log = json_encode($_POST);
         file_put_contents('./Data/xovip.txt', $log.PHP_EOL, FILE_APPEND);
        $data = $_POST;
        $param_sign = $data['sign'];
        unset($data['sign']);
        $s_key = M('Order')->where(['pay_orderid' => $_POST['out_trade_no']])->getField("key");
        $sign = $this->xovipsign($s_key, $data);
        if($sign != $_POST['sign']) {
            exit('sign error');
        }
        $this->EditMoney($data['out_trade_no'], '', 0);
        exit('success');
    }
}