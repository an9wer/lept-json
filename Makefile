test-leptjson: test.o leptjson.o
	gcc -o test-leptjson test.o leptjson.o

test.o leptjson.o: test.c leptjson.c leptjson.h
	gcc -c test.c leptjson.c

clean:
	rm test.o leptjson.o test-leptjson

install:
	cp test-leptjson /usr/local/bin/test-leptjson

uninstall:
	rm /usr/local/bin/test-leptjson
