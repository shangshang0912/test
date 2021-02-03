#$(lecard ./*.c) 获取当前目录下以.c结尾的文件的文件名称
src=$(wildcard ./*.c)
#保存到变量src中
#$表示对变量的使用
#test:$(src)
#	gcc $^ -o $@
#	将src变量的内容中的.c替换为.o然后存放到obj变量中
obj=$(patsubst %.c, %.o, $(src))

test:$(obj)
	gcc  $^ -o $@ 

%.o:%.c
	gcc -c $< -o $@
#.PHONY:clean
clean:
	rm -rf $(obj) test


#test.o:test.c
#	gcc -c $^ -o $@
#test1.o:test1.c
#	gcc -c $^ -o $@
#test2.o:test2.c
#	gcc -c $^ -o $@
