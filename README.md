
使い方
=====


最新版の msgpack-php を使う場合
---- 

git clone してきて、コンパイルします

    $ make 
    git clone https://github.com/msgpack/msgpack-php
    Cloning into 'msgpack-php'...
    cd msgpack-php && phpize && ./configure 2>&1 > /dev/null
    Configuring for:
    PHP Api Version:         20100412
    Zend Module Api No:      20100525
    Zend Extension Api No:   220100525
    configure: WARNING: You will need re2c 0.13.4 or later if you want to regenerate PHP parsers.
    make -C msgpack-php 2>&1 > /dev/null
    cat req.msgpack | php -d extension=./msgpack-php/modules/msgpack.so dump.php
    array(3) {
      ["version"]=>
      int(1)
      ["imp"]=>
      array(9) {
        ["impid"]=>
        string(36) "e6e7d619-7ff0-4b8b-9526-f9cec2bbc65f"
        ["h"]=>
        int(250)
        ["w"]=>
        int(300)
        ["ip"]=>
        string(15) "220.110.139.200"
        ["ua"]=>
        string(124) "Mozilla/5.0 (iPhone; CPU iPhone OS 5_0_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Mobile/9A405 Safari/7534.48.3"
        ["cat"]=>
        int(12)
        ["page"]=>
        string(18) "http://buzzurl.jp/"
        ["bcat"]=>
        array(0) {
        }
        ["pos"]=>
        int(1)
      }
      ["user"]=>
      array(4) {
        ["uid"]=>
        string(40) "123cd7dcf83971b35bb01ae237635fe8a210bd6f"
        ["dspuid"]=>
        string(13) "1waxz4e01prgv"
        ["yob"]=>
        int(1970)
        ["gender"]=>
        string(1) "F"
      }
    }
    cat res.msgpack | php -d extension=./msgpack-php/modules/msgpack.so dump.php
    PHP Warning:  [msgpack] (php_msgpack_unserialize) Extra bytes in /home/ajiyoshi/project/0508/adnite/dump.php on line 3
    int(-17)

すでに入っている msgpack-php を使う場合
----

    $ make PHP=php
    git clone https://github.com/msgpack/msgpack-php
    Cloning into 'msgpack-php'...
    cd msgpack-php && phpize && ./configure 2>&1 > /dev/null
    Configuring for:
    PHP Api Version:         20100412
    Zend Module Api No:      20100525
    Zend Extension Api No:   220100525
    configure: WARNING: You will need re2c 0.13.4 or later if you want to regenerate PHP parsers.
    make -C msgpack-php 2>&1 > /dev/null
    cat req.msgpack | php -d extension=./msgpack-php/modules/msgpack.so dump.php
    array(3) {
      ["version"]=>
      int(1)
      ["imp"]=>
      array(9) {
        ["impid"]=>
        string(36) "e6e7d619-7ff0-4b8b-9526-f9cec2bbc65f"
        ["h"]=>
        int(250)
        ["w"]=>
        int(300)
        ["ip"]=>
        string(15) "220.110.139.200"
        ["ua"]=>
        string(124) "Mozilla/5.0 (iPhone; CPU iPhone OS 5_0_1 like Mac OS X) AppleWebKit/534.46 (KHTML, like Gecko) Mobile/9A405 Safari/7534.48.3"
        ["cat"]=>
        int(12)
        ["page"]=>
        string(18) "http://buzzurl.jp/"
        ["bcat"]=>
        array(0) {
        }
        ["pos"]=>
        int(1)
      }
      ["user"]=>
      array(4) {
        ["uid"]=>
        string(40) "123cd7dcf83971b35bb01ae237635fe8a210bd6f"
        ["dspuid"]=>
        string(13) "1waxz4e01prgv"
        ["yob"]=>
        int(1970)
        ["gender"]=>
        string(1) "F"
      }
    }
    cat res.msgpack | php -d extension=./msgpack-php/modules/msgpack.so dump.php
    PHP Warning:  [msgpack] (php_msgpack_unserialize) Extra bytes in /home/ajiyoshi/project/0508/adnite/dump.php on line 3
    int(-17)
