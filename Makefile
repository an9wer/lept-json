test: test.o leptjson.o
	gcc -o test test.o leptjson.o

test.o leptjson.o: test.c leptjson.c leptjson.h
	gcc -c test.c leptjson.c

clean:
	rm test.o leptjson.o test

install:
	cp test /usr/local/bin/test-leptjson

uninstall:
	rm /usr/local/bin/test-leptjson
