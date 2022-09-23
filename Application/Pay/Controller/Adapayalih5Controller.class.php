<?php
namespace Pay\Controller;
class Adapayalih5Controller extends PayController
{
    public function __construct()
    {
        parent::__construct();
    }

    public function Pay($array)
    {
        $orderid = I("request.pay_orderid");
        $body = I('request.pay_productname');
        $notifyurl = $this->_site . 'Pay_Adapayalih5_notifyurl.html'; //异步通知
        $callbackurl = $this->_site . 'Pay_Adapayalih5_callbackurl.html'; //返回通知

        $orderid = I("request.pay_orderid", '');

        $body = I('request.pay_productname', '');

        $parameter = [
            'code'         => 'Adapayalih5',
            'title'        => '标题',
            'exchange'     => 1, // 金额比例
            'gateway'      => '',
            'orderid'      => '',
            'out_trade_id' => $orderid, //外部订单号
            'channel'      => $array,
            'body'         => $body,
        ];
        $return = $this->orderadd($parameter);
        
        include_once  dirname(__FILE__). "/../Lib/AdapaySdk/init.php";
        $config = [
            'api_key_live'=> $return['mch_id'],
            'api_key_test'=> $return['mch_id'],
            'rsa_private_key'=> $return['signkey']
        ];
        \AdaPay\AdaPay::init(json_encode($config), "live", false);
        
        $payment = new \AdaPaySdk\Payment();
        $payment_params = array(
            'app_id'=> $return['appid'],
            'order_no'=> $return['orderid'],
            'pay_channel'=> 'alipay',
            'pay_amt'=> sprintf('%.2f', $return['amount']),
            'goods_title'=> $body,
            'goods_desc'=> $body.$return['amount'],
            'description'=> 'description',
            'device_info'=> ['device_ip'=>$this->getIP()],
            'notify_url'=>$notifyurl
        );
        $payment->create($payment_params);
        if ($payment->isError()){
            echo json_encode(['code' => '1', 'msg' => '失败', 'data' => $payment->result]);
        } else {
            // header("Location: ".$payment->result['expend']['pay_info']);
            echo json_encode(['code' => '0', 'msg' => '成功', 'data' => $payment->result['expend']['pay_info']]);
        }
		exit();
    }
    
    //同步通知
    public function callbackurl()
    {
        $post_data = json_decode($_POST['data'],1);
        $Order = M("Order");
        $pay_status = $Order->where(['pay_orderid' => $post_data['order_no']])->getField("pay_status");
        if($pay_status <> 0){
            $this->EditMoney($data['merReqNo'], 'Adapayalih5', 1);
            exit('交易成功！如未到账请联系客服');
        }else{
            exit("交易成功！");
        }

    }
    public function notifyurl()
    {
        $post_data = json_decode($_POST['data'],1);
        $post_data_str = json_encode($post_data,JSON_UNESCAPED_UNICODE);
        $post_sign_str = isset($_POST['sign']) ? $_POST['sign']: '';
        $arr_data = json_decode($_POST['data'],true);
        $order_info = M('Order')->where(['pay_orderid' => $arr_data['order_no']])->find();
        $signkey = $order_info['key'];
        $config = [
            'api_key_live'=> $order_info['memberid'],
            'api_key_test'=> $order_info['memberid'],
            'rsa_private_key'=> $order_info['key']
        ];
        include_once  dirname(__FILE__). "/../Lib/AdapaySdk/init.php";
        \AdaPay\AdaPay::init(json_encode($config), "live", false);
        $adapay_tools = new \AdaPaySdk\AdapayTools();
        $sign_flag = $adapay_tools->verifySign($post_data_str, $post_sign_str);
        if($sign_flag){
            $this->EditMoney($arr_data['order_no'], '', 0);
            exit('success');
        }else{
            exit('error');
        }
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