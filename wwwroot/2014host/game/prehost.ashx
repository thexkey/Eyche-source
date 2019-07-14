<?php
$port = addslashes($_GET["port"]);
$file = 'currentserver.txt';
// Append a new port to the file
$current = "?port=" . $port;
// Write the contents back to the file
file_put_contents($file, $current);
?>
Please use this in Eyche 2014!