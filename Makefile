MSGPACK_SO = ./msgpack-php/modules/msgpack.so
EXTENSION = -d extension=$(MSGPACK_SO)
PHP=php $(EXTENSION)
DEVNULL = 2>&1 > /dev/null

all: req_dump res_dump

prepare: $(MSGPACK_SO)

req_dump: prepare
	cat req.msgpack | $(PHP) dump.php

res_dump: prepare
	cat res.msgpack | $(PHP) dump.php

$(MSGPACK_SO): msgpack-php
	cd msgpack-php && phpize && ./configure $(DEVNULL)
	make -C msgpack-php $(DEVNULL)

msgpack-php : 
	git clone https://github.com/msgpack/msgpack-php

clean:
	rm -rf msgpack-php
