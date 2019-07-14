<?php
ob_start();
?>
print("Hi")
<?php
$data = ob_get_clean();
$signature;
$key = file_get_contents("./privatekey.pem");
openssl_sign($data, $signature, $key, OPENSSL_ALGO_SHA1);
echo sprintf("%%%s%%%s", base64_encode($signature), $data);
?>