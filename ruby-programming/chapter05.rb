=begin
chapter5 条件判断
=end
# ---------------------
p ''.empty? 			#=> true
p 'string'.empty? #=> false


p /ruby/ =~ 'Ruby'  #=> nil

a = 10
b = 20

if b > a
	print "b 大于　ａ\n"
elsif b == a
	print "b == a \n"
else
	print "b 小于　a \n"
end

# unless是在条件为假时执行，与if相反
unless a > b
	print "a 小于 b \n"
end

names = ['leiyu', 'Jack', 'Ana']
names.each { |value|
	case value
	when 'leiyu'
		print "hello,", value, "\n"
	when 'Jack'
		print "hello,", value, "\n"
	when 'Ana'
		print "hello,", value, "\n"
	else 
		print "please get away.\n"
	end
}
# 使用　if改写上面代码
names.each { |value|
	if value === "leiyu" 
		print "hello, ", value, "\n"
	elsif value === "Jack" 
		print "hello, ", value, "\n"
	elsif value === "Ana"
		print "hello, ", value, "\n"
	end				
}

arry = ['aa', 11, nil]
item = arry[0]

case item
	when String
		print "item is a string \n"
	when Numeric
		print "item is a Numeric \n"
	else
		print "item is a something.\n"
end

p ((1..3) === 2)     #=> true
p /zz/ === "zyzzy"   #=> true
p String === "xyzzy" #=> true
			
			