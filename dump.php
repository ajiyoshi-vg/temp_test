<?php
$hoge = file_get_contents("php://stdin");
var_dump( msgpack_unserialize($hoge) );
