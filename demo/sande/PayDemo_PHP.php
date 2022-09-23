
// 1、支付宝H5 demo

<?php

// rsa加密公钥(对私钥进行加密)
$publicKeyMi = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCjW8kxHWXtgUfQRkMy0418PlvvD8CUslJG4AtzXXbcstU+fxC5bL5FEwhq14hvnDtgN//4enhjSfB/6bJV62asXqq5xr5/zAHlMGW1PY/F7Di7ospTv/rQYPX+x1SxGj4ilWtu8Ljpr6q2ZY2h/WfGUpnCgUnTLK/0hGwGoCEtWQIDAQAB";

// 请求url
$url = "https://fcd.sandpay.com.cn/gateway/sand/alih5";

$path = "/www/wwwroot/juhe.cn/Data/cert/6888805043623.pfx";   // 商户导出私钥(用于签名sign)
$pwd = '123456';   // 商户导出私钥时填写的密码
$pri = loadPk12Cert($path,$pwd);
$search = [
    "-----BEGIN PRIVATE KEY-----",
    "-----END PRIVATE KEY-----",
    "\n",
    "\r",
    "\r\n"
];
$privateKey=str_replace($search,"",$pri);

$data = array(
    "version" => "1.0",
    "charset" => "UTF-8",
    "signType" => "01",
    "mid" => "6888805043623", // 替换成生产商户号
    "orderCode" => '202006021435004569', // 商户唯一订单号
    "reqTime" => date("YmdHis", time()),
    "txnTimeOut" => date("YmdHis", time()+30*60),
    "productId" => "00002022",
    "clearCycle" => "0", //0-T1(默认) 1-T0 2-D0  3-D1
    "totalAmount" => "000000000101",
    "notifyUrl" => "https://mmall.mixienet.com.cn/notify.php",
    "frontUrl" => "https://mmall.mixienet.com.cn",
    "clientIp" => "172.0.0.1",
    "productName" => "测试商品",
    "extend" => "{}"
);

// 对商户支付私钥privateKey后100位加密处理
$b=strlen($privateKey)-100;
$beforKey=substr($privateKey,0,$b);
$afterKey=substr($privateKey,$b);
$MiKey="";
$pubKey = "-----BEGIN PUBLIC KEY-----\n" .
wordwrap($publicKeyMi, 64, "\n", true) .
"\n-----END PUBLIC KEY-----";
$pubKey = openssl_pkey_get_public($pubKey);
$MiKey = openssl_public_encrypt($afterKey,$encrypted,$pubKey) ? base64_encode($encrypted) : null;
$data['beforKey'] = $beforKey;
$data['afterKey'] = $MiKey;  //私钥后100位加密的数据
// 使用商户私钥privateKey进行签名
$sign = sign(getSignContent($data), $privateKey, "RSA");
$data['sign'] = $sign;
$redirectUrl = $url."?name=".urlencode(json_encode($data));
header('Location:'.$redirectUrl);

function checkEmpty($value) {
    if (!isset($value))
        return true;
    if ($value === null)
        return true;
    if (trim($value) === "")
        return true;

    return false;
}

function getSignContent($params) {
    ksort($params);

    $stringToBeSigned = "";
    $i = 0;
    foreach ($params as $k => $v) {
        if (false === checkEmpty($v) && "@" != substr($v, 0, 1)) {

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

function sign($data, $priKey, $signType = "RSA") {
    $res = "-----BEGIN RSA PRIVATE KEY-----\n" .
                wordwrap($priKey, 64, "\n", true) .
                "\n-----END RSA PRIVATE KEY-----";

    if ("RSA2" == $signType) {
        openssl_sign($data, $sign, $res, OPENSSL_ALGO_SHA256);
    } else {
        openssl_sign($data, $sign, $res);
    }
    
    $sign = base64_encode($sign);
    return $sign;
}

function loadPk12Cert($path, $pwd)
{
    try {
        $file = file_get_contents($path);
        if (!$file) {
            throw new \Exception('loadPk12Cert::file
                    _get_contents');
        }

        if (!openssl_pkcs12_read($file, $cert, $pwd)) {
            throw new \Exception('loadPk12Cert::openssl_pkcs12_read ERROR');
        }
        return $cert['pkey'];
    } catch (\Exception $e) {
        throw $e;
    }
}



// 2、支付宝扫码 demo

<?php

// rsa加密公钥(对私钥进行加密)
$publicKeyMi = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCjW8kxHWXtgUfQRkMy0418PlvvD8CUslJG4AtzXXbcstU+fxC5bL5FEwhq14hvnDtgN//4enhjSfB/6bJV62asXqq5xr5/zAHlMGW1PY/F7Di7ospTv/rQYPX+x1SxGj4ilWtu8Ljpr6q2ZY2h/WfGUpnCgUnTLK/0hGwGoCEtWQIDAQAB";
  
// 请求url
$url = "https://fcd.sandpay.com.cn/gateway/sand/ali";

$path = "/www/wwwroot/juhe.cn/Data/cert/6888805043623.pfx";   // 商户导出私钥(用于签名sign)
$pwd = '123456';   // 商户导出私钥时填写的密码
$pri = loadPk12Cert($path,$pwd);
$search = [
    "-----BEGIN PRIVATE KEY-----",
    "-----END PRIVATE KEY-----",
    "\n",
    "\r",
    "\r\n"
];
$privateKey=str_replace($search,"",$pri);

$data = array(
    "version" => "1.0",
    "charset" => "UTF-8",
    "signType" => "01",
    "mid" => "6888805043623", // 替换成生产商户号
    "orderCode" => '2020060214350042345', // 商户唯一订单号
    "reqTime" => date("YmdHis", time()),
    "txnTimeOut" => date("YmdHis", time()+30*60),
    "payTool" => "0401",
    "productId" => "00002022",
    "clearCycle" => '0', //0-T1(默认) 1-T0 2-D0  3-D1
    "totalAmount" => "000000000101",
    "notifyUrl" => "https://mmall.mixienet.com.cn/notify.php",
    "clientIp" => "172.0.0.1",
    "productName" => "测试商品",
    "extend" => "{}"
);

// 对商户支付私钥privateKey进行rsa分段加密处理
$MiKey="";
$pubKey = "-----BEGIN PUBLIC KEY-----\n" .
wordwrap($publicKeyMi, 64, "\n", true) .
"\n-----END PUBLIC KEY-----";
$res = openssl_get_publickey($pubKey);
//把需要加密的内容，按117位拆开解密
$RSA_ENCRYPT_BLOCK_SIZE = 117;
$content  = '';
$list = str_split($privateKey, $RSA_ENCRYPT_BLOCK_SIZE);
foreach ($list as $block) {
    openssl_public_encrypt($block, $dataEncrypt, $res);
    $content .= $dataEncrypt;
}
$MiKey = base64_encode($content);
openssl_free_key($res);
$data['agentKey'] = $MiKey; //公钥加密后的数据

// 使用商户私钥privateKey进行签名
$sign = sign(getSignContent($data), $privateKey, "RSA");
$data['sign'] = $sign;

// POST请求json数据
$data_string = json_encode($data);
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
curl_setopt($ch, CURLOPT_POSTFIELDS,$data_string);
curl_setopt($ch, CURLOPT_RETURNTRANSFER,true);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
    'Content-Type: application/json',
    'Content-Length: ' . strlen($data_string))
);

$response_data = curl_exec($ch); //返回json数据

function checkEmpty($value) {
    if (!isset($value))
        return true;
    if ($value === null)
        return true;
    if (trim($value) === "")
        return true;

    return false;
}

function getSignContent($params) {
    ksort($params);

    $stringToBeSigned = "";
    $i = 0;
    foreach ($params as $k => $v) {
        if (false === checkEmpty($v) && "@" != substr($v, 0, 1)) {

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

function sign($data, $priKey, $signType = "RSA") {
    $res = "-----BEGIN RSA PRIVATE KEY-----\n" .
                wordwrap($priKey, 64, "\n", true) .
                "\n-----END RSA PRIVATE KEY-----";

    if ("RSA2" == $signType) {
        openssl_sign($data, $sign, $res, OPENSSL_ALGO_SHA256);
    } else {
        openssl_sign($data, $sign, $res);
    }
    
    $sign = base64_encode($sign);
    return $sign;
}

function loadPk12Cert($path, $pwd)
{
    try {
        $file = file_get_contents($path);
        if (!$file) {
            throw new \Exception('loadPk12Cert::file
                    _get_contents');
        }

        if (!openssl_pkcs12_read($file, $cert, $pwd)) {
            throw new \Exception('loadPk12Cert::openssl_pkcs12_read ERROR');
        }
        return $cert['pkey'];
    } catch (\Exception $e) {
        throw $e;
    }
}

