=begin
	
chapter 01
	
=end

#print, puts, p, pp

# print
=begin
１．print方法默认输出后不换行
２．当输出内容使用单引号括注时，对\n特殊字符不进行转义

=end

# print('hello, ruby.\n') #=> hello, ruby.\n
# print("hello, ruby.\n") #=> hello, ruby.
# print('hello, \\ ruby.') #=> hello, \ ruby.

# print "欢迎来到ｒｕｂｙ的世界." # 欢迎来到ｒｕｂｙ的世界.
# print(100) #=> 100
# print("100") #=> 100
=begin
输出中文时，执行编译时需要加上　-Ku (utf-8), -Ke(EUC-JP)参数，如
ruby -Ku filename
=end

# puts
=begin
1.puts方法输出字符后会自动换行．
2.当puts中有多个字符参数时，会在每个字符输出后换行．
=end

# puts('hello, ruby.')　hello, ruby.
# puts("hello,", "ruby.") # hello,
												# ruby.
# p
=begin
１．使用ｐ方法输出的内容，可以根据数据类型不同区别出来
２．对于\n, \t等特殊字符，不会进行转义，直接输出
=end
	# p('hello, ruby\n')  #=> "hello, ruby\\n"
	# p("hello, \\ ruby.")  #=> "hello, \\ ruby"
	# p("hello, \n ruby.")  #=> "hello, \n ruby."

	# p("hello, \n ruby.\t")  #=> "hello, \n ruby.\t"
# p(100)   #=> 100
# p("100") #=> "100"

=begin
四则运算
引用　include Math
=end

# include Math
# print("sin(3.1415) = ", sin(3.1415), "\n") # sin(3.1415) = 9.265358966049026e-05
# print("sqrt(10000) = ", sqrt(10000), "\n") # sqrt(10000) = 100.0


=begin
条件控制语句
=end
# p (2 == 2) #=> true
# p (2 == "2") #=> false

# p ('ruby' == "ruby") #=> true
# p (1 == true)  #=> false
# p (0 == false) #=> false

# flag = 0 条件为真
# flag = 0
# if (flag) then 
# 	print("flag = ", flag, "\n")
# end

# flag = nil 条件为假
# flag = nil
# if flag then
# 	print("flag = ", flag, "\n")
# end

# a = 20
# if a >= 10
# 	print("bigger\n")
# else
# 	print("smaller\n")
# end

=begin
在条件判断中，除false和nil之外，其余值都为真
=end

i = 1
while i <= 10
	print(i, "\n")
	i = i + 1
end

def hello
	print("hello, ruby.\n")
end
hello();



