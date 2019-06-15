target=./bin/copy
src=$(wildcard ./src/*.c)
obj=$(patsubst %.c,%.o,$(src))

$(target):$(obj)
	gcc $^ -o $@
%.o:%.c
	gcc $< -c -I ./include -o $@

.PHONY:clean
clean:
	rm -fr ./src/*.o $(target)
