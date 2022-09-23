<?php
namespace Pay\Controller;
class Shandebzh5Controller extends PayController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function Pay($array)
    {
        $orderid = I("request.pay_orderid");
        $body = I('request.pay_productname');
        $notifyurl = $this->_site . 'Pay_Shandebzh5_notifyurl.html'; //异步通知
        $callbackurl = $this->_site . 'Pay_Shandebzh5_callbackurl.html'; //返回通知

        $orderid = I("request.pay_orderid", '');

        $body = I('request.pay_productname', '');

        $parameter = [
            'code'         => 'Shandebzh5',
            'title'        => '标题',
            'exchange'     => 1, // 金额比例
            'gateway'      => '',
            'orderid'      => '',
            'out_trade_id' => $orderid, //外部订单号
            'channel'      => $array,
            'body'         => $body,
        ];
        $return = $this->orderadd($parameter);
        
        $data = [
            'version' => 10,
            'mer_no' =>  $return['mch_id'], //商户号
            'mer_key' => $return['signkey'], // 商户私钥通过安卓APK工具解析出来的KEY1
            'mer_order_no' => $return['orderid'], //商户唯一订单号
            'create_time' => date('YmdHis'),
            'expire_time' => date('YmdHis', time()+30*60),
            'order_amt' => sprintf('%.2f', $return['amount']), //订单支付金额
            'notify_url' => $notifyurl, //订单支付异步通知
            'return_url' => $callbackurl, //订单前端页面跳转地址
            'create_ip' => str_replace('.','_', $this->getIP()),
            'goods_name' => '支付',
            'store_id' => '000000',
            'product_code' => '02020002',
            'clear_cycle' => '3',
            //'pay_extra' => json_encode(["resourceAppid"=>"wx8c5f56c4c0596","resourceEnv"=>"oC6rSXbjjf-qqosKyWHola7Ow"]),
            'accsplit_flag' => 'NO',
            'jump_scheme' => 'sandcash://scpay',
            'meta_option' => json_encode([["s" => "Android","n" => "wxDemo","id" => "com.pay.paytypetest","sc" => "com.pay.paytypetest"]]),
            'sign_type' => 'MD5'
        ];
        $temp = $data;
        unset($temp['goods_name']);
        unset($temp['jump_scheme']);
        unset($temp['expire_time']);
        unset($temp['product_code']);
        unset($temp['clear_cycle']);
        unset($temp['meta_option']);
        
        $sign = strtoupper(md5($this->getSignContent($temp)."&key=".$return['appsecret']));  // key对应商户私钥通过安卓APK工具解析出来的MD5KEY
        $data['sign'] = $sign;
        
        $query = http_build_query($data);
        $payurl = "https://sandcash.mixienet.com.cn/pay/h5/alipay?".$query;
        header("Location: ".$payurl);
        echo json_encode(['code' => '0', 'msg' => '成功', 'data' => htmlspecialchars($payurl)]);
		exit();
    }
    
    //同步通知
    public function callbackurl()
    {
        $post_data = json_decode($_POST['data'],1);
        $Order = M("Order");
        $pay_status = $Order->where(['pay_orderid' => $post_data['order_no']])->getField("pay_status");
        if($pay_status <> 0){
            $this->EditMoney($data['merReqNo'], 'Shandebzh5', 1);
            exit('交易成功！如未到账请联系客服');
        }else{
            exit("交易成功！");
        }

    }
    public function notifyurl()
    {
        $log = json_encode($_POST);
        file_put_contents('./Data/shande.txt', $log.PHP_EOL, FILE_APPEND);
        
        
        if ($sign_flag){
            $this->EditMoney($post_data['order_no'], 'Shandebzh5', 0);
            exit('success');
        }else{
            exit('error');
        }
    }
    
    function getSignContent($params) {
        ksort($params);
    
        $stringToBeSigned = "";
        $i = 0;
        foreach ($params as $k => $v) {
            if (false === $this->checkEmpty($v) && "@" != substr($v, 0, 1)) {
    
                if ($i == 0) {
                    $stringToBeSigned .= "$k" . "=" . "$v";
                } else {
                    $stringToBeSigned .= "&" . "$k" . "=" . "$v";
                }
                $i++;
            }
        }
    
        unset ($k, $v);
        return $stringToBeSigned;
    }
    
    function checkEmpty($value)
    {
        if (!isset($value))
            return true;
        if ($value === null)
            return true;
        if (trim($value) === "")
            return true;

        return false;
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