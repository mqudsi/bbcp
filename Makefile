.OBJDIR: ./
.PHONY: src 

src:
	+$(MAKE) -C src
clean:
	+$(MAKE) -C src clean
install:
	cp ./bin/`./MakeSname`/bbcp /usr/local/bin/
