<?php
/**
 * Created by PhpStorm.
 * User: gaoxi
 * Date: 2017-05-18
 * Time: 11:33
 */
namespace Pay\Controller;

class JuHeController extends PayController
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
        $notifyurl = $this->_site . 'Pay_JuHe_notifyurl.html'; //异步通知
        $callbackurl = $this->_site . 'Pay_JuHe_callbackurl.html'; //返回通知

        $parameter = array(
            'code' => 'JuHe', // 通道名称
            'title' => '支付',
            'exchange' => 1, // 金额比例
            'gateway' => '',
            'orderid' => '',
            'out_trade_id' => $orderid,
            'body'=>$body,
            'channel'=>$array
        );

        // 订单号，可以为空，如果为空，由系统统一的生成
        $return = $this->orderadd($parameter);
                
        $pay_memberid = $return['mch_id'];
        $pay_orderid = $return["orderid"];
        $pay_amount =  $return["amount"];
        $pay_bankcode = $return["appid"];
        $pay_applydate = date("Y-m-d H:i:s");
        $pay_notifyurl = $notifyurl;
        $pay_callbackurl = $callbackurl;
        $Md5key = $return['signkey'];
        $tjurl = $return['gateway'];

        //扫码
        $native = array(
            "pay_memberid" => $pay_memberid,
            "pay_orderid" => $pay_orderid,
            "pay_amount" => $pay_amount,
            "pay_applydate" => $pay_applydate,
            "pay_bankcode" => $pay_bankcode,
            "pay_notifyurl" => $pay_notifyurl,
            "pay_callbackurl" => $pay_callbackurl,
        );
        ksort($native);
        $md5str = "";
        foreach ($native as $key => $val) {
            $md5str = $md5str . $key . "=" . $val . "&";
        }
        $sign = strtoupper(md5($md5str . "key=" . $Md5key));
        $native["pay_md5sign"] = $sign;
        $native['pay_attach'] = "1234|456";
        $native['pay_productname'] ='MIUI小米小米手机4';

        $html = '
        <!Doctype html>
        <html>
        <head>
            <meta charset="utf-8">
            <title>提交中</title>
        </head>
        <body onLoad="document.pay.submit()">
            <form name="pay" action="'.$return['gateway'].'" method="post">
        ';

        foreach($native as $k => $v) {
            $html .= '<input type="hidden" name="'.$k.'" value="'.$v.'" />';
        }

        $html .= '
            </form>
        </body>
        </html>
        ';

        echo $html;
    }


    //同步通知
    public function callbackurl()
    {
        $Order = M("Order");
        $pay_status = $Order->where(['pay_orderid' => $_REQUEST["orderid"]])->getField("pay_status");
        if($pay_status <> 0){
            $this->EditMoney($_REQUEST["orderid"], 'JuHe', 1);

            exit('交易成功！如未到账请联系客服');
        }else{
            exit("交易失败！");
        }

    }

    //异步通知
    public function notifyurl()
    {
        file_put_contents('juhe.log', http_build_query($_POST).PHP_EOL, FILE_APPEND);
      
        // $ReturnArray = array( // 返回字段
        //     "memberid" => $_REQUEST["memberid"], // 商户ID
        //     "orderid" =>  $_REQUEST["orderid"], // 订单号
        //     "amount" =>  $_REQUEST["amount"], // 交易金额
        //     "datetime" =>  $_REQUEST["datetime"], // 交易时间
        //     "transaction_id" =>  $_REQUEST["transaction_id"], // 支付流水号
        //     "returncode" => $_REQUEST["returncode"],
        // );
        $ReturnArray = $_POST;
      
        $Order = M("Order");
        $Md5key = $Order->where(['pay_orderid' => $_REQUEST["orderid"]])->getField("key");
   
		ksort($ReturnArray);
        reset($ReturnArray);

        $md5str = "";
        foreach ($ReturnArray as $key => $val) {
            if($key == 'sign' || $key == 'attach') continue;
            
            $md5str = $md5str . $key . "=" . $val . "&";
        }
        $sign = strtoupper(md5($md5str . "key=" . $Md5key));

        if($sign != strtoupper($_REQUEST['sign'])) exit('sign error');
        if($_REQUEST['returncode'] != '00') exit('trade fail');

        $this->EditMoney($_REQUEST["orderid"], 'JuHe', 0, $_REQUEST["amount"]);

        exit("OK");
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
}
