=begin
指令设计
=end

# ARGV数组获取命令行输入的数据
# print('第一个参数: ', ARGV[0], "\n")
# print('第二个参数: ', ARGV[1], "\n")
# print('第三个参数: ', ARGV[2], "\n")

# ruby -Ku chapter03.rb first second third

# 第一个参数: first
# 第二个参数: second
# 第三个参数: third

# -------------------------------------
=begin
name = ARGV[0]
print("happy birthday, ", name, "!\n")
=end
# ruby -Ku chapter03.rb ruby

# happy birthday, ruby!

=begin
命令行中输入的数据为字符串，如需进行计算，则要转换为数值，使用to_i方法
=end

# -------------------------------------
=begin
num0 = ARGV[0].to_i
num1 = ARGV[1].to_i

print("num0 + num1 = ", num0 + num1, "\n")
print("num0 * num1 = ", num0 * num1, "\n")
=end


# ruby -Ku chapter03.rb 3 4 
# num0 + num1 = 7
# num0 * num1 = 12

# 读取文件
# ---------------------------------------
# filename = ARGV[0]
# file = open(filename)
# text = file.read
# print(text, "\n")
# file.close

# read方法读取整个文件后返回
# 当读取大文件时，等候时间较长，占用内存较大

# ---------------------------------------
# gets方法
# filename = ARGV[0]
# file = open(filename)

# while text = file.gets 
# 	print(text)
# end

# file.close
# gets方法每次读取文件中的一行字符串，直到读到文件结尾处，返回nil


# grep 输出与模式匹配的行
pattern  = Regexp.new(ARGV[0])
filename = ARGV[1]
file = open(filename)

while text = file.gets
	if pattern =~ text
		print text
	end	
end

file.close


