<?php

namespace Pay\Controller;
class XovipalipayController extends PayController
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
        $notifyurl = $this->_site . 'Pay_Xovipalipay_notifyurl.html'; //异步通知
        $callbackurl = $this->_site . 'Pay_Xovipalipay_callbackurl.html'; //返回通知

        $orderid = I("request.pay_orderid", '');

        $body = I('request.pay_productname', '');

        $parameter = [
            'code'         => 'Xovipalipay',
            'title'        => 'Xovipalipay支付宝',
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
        $return["notifyurl"] || $return["notifyurl"] = $this->_site . 'Pay_Xovipalipay_notifyurl.html';
        $return['callbackurl'] || $return['callbackurl'] = $this->_site . 'Pay_Xovipalipay_callbackurl.html';
        error_reporting(0);
        $content_type = 'text';
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
        $sign = $this->Xovipalipaysign($s_key, $native);
        $native['sign'] = $sign;
        // echo json_encode($sign);
        // exit();
        
        $tjurl='https://api.longxiang886.xyz/gateway/index/checkpoint.do';

        $str = '<form id="Form1" name="Form1" method="post" action="' .$tjurl. '">';
        $str = $str . '<input type="text" name="authcode" value="">';
        foreach ($native as $key => $val) {
            $str = $str . '<input type="hidden" name="' . $key . '" value="' . $val . '">';
        }
        //$str = $str . '<input type="submit" value="提交">';
        $str = $str . '</form>';
        $str = $str . '<script>';
        $str = $str . 'document.Form1.submit();';
        $str = $str . '</script>';
        echo $str;
        return;
    }

    public function Xovipalipaysign($key_id, $data)
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
            $this->EditMoney($_GET["orderid"], 'Jmalipay', 1);
        }else{
            exit("交易成功");
        }

    }

    //异步通知
    public function notifyurl(){
       
        //商户名称
        $account_name  = $_POST['account_name'];
        //支付时间戳
        $pay_time  = $_POST['pay_time'];
        //支付状态
        $status  = $_POST['status'];
        //支付金额
        $amount  = $_POST['amount'];
        //支付时提交的订单信息
        $out_trade_no  = $_POST['out_trade_no'];
        //平台订单交易流水号
        $trade_no  = $_POST['trade_no'];
        //该笔交易手续费用
        $fees  = $_POST['fees'];
        //签名算法
        $sign  = $_POST['sign'];
        //回调时间戳
        $callback_time  = $_POST['callback_time'];
        //支付类型
        $type = $_POST['type'];
        //商户KEY（S_KEY）
        $account_key = $_POST['account_key'];
        $md5key = getKey($out_trade_no);

        //第一步，检测商户KEY是否一致
        if ($account_key != $md5key) exit('error:key');
        //第二步，验证签名是否一致
        if ($this->Xovipalipaysign($md5key, ['amount'=>$amount,'out_trade_no'=>$out_trade_no]) != $sign) exit('error:sign');

        //下面就可以安全的使用上面的信息给贵公司平台进行入款操作
        //成功逻辑处理
             $this->EditMoney($out_trade_no, '', 0);
            exit("回调成功");

        //测试时，将来源请求写入到txt文件，方便分析查看
      


    }



   }