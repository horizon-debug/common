target=copy
src=$(wildcard ./*.c)
obj=$(patsubst %.c,%.o,$(src))

$(target):$(obj)
	gcc $^ -o $@
%.o:%.c
	gcc $< -c -o $@

.PHONY:clean
clean:
	rm -fr *.o $(target)
