CC=g++
CFLAGS= -g -Wall 

all: proxy

proxy: proxy_server_with_cache.c
	$(CC) $(CFLAGS) -o proxy_parse.o -c proxy_parse.c -lpthread        #proxy_parse.o is executable file here
	$(CC) $(CFLAGS) -o proxy.o -c proxy_server_with_cache.c -lpthread   #-lpthread is linking the two files .o and .c
	$(CC) $(CFLAGS) -o proxy proxy_parse.o proxy.o -lpthread     

clean:
	rm -f proxy *.o     #removing the o from the file and running

tar:
	tar -cvzf ass1.tgz proxy_server_with_cache.c README Makefile proxy_parse.c proxy_parse.h