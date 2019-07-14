<?php
$username = addslashes($_GET["username"]);
$ip = addslashes($_GET["ip"]);
$port = addslashes($_GET["port"]);
$id = addslashes($_GET["id"]);
$app = addslashes($_GET["app"]);
$file = 'currentuser.txt';
// Append a new person to the file
$current = "?username=" . $username . "&ip=" . $ip ."&port=" . $port . "&id=" . $id . "&app=" . $app;
// Write the contents back to the file
file_put_contents($file, $current);
?>
Please use this in Eyche 2014!