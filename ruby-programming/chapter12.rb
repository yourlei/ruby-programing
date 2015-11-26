=begin
chapter12.rb
字符串类
=end

str = %q(ruby said, hello world)
# p str


# 10.times {|i|
# 	10.times{|j|
# 		print << "EOB"
# # i: #{i}
# # j: #{j}

# i*j = #{i*j}
# 	EOB
# 	}
# }

n = 234

# printf("%d\n", n)
# printf("%4d\n", n)　　
# 输出右对齐
# printf("%-4d\n", n) 
# 输出左对齐

str1 = "ruby, my world"
p str1.length
printf("%s\n", str1)
printf("%20s\n", str1)

lang = %q(ruby perl python go)
p lang

# split方法将字符串拆分为一个数组
single_char = lang.split(/\s/)
# p single_char
# ["ruby", "perl", "python", "go"]

statement = "Ruby is an object oriented programming language"
ci = []
ci = statement.split(/\s/)

p ci.length
# newstr = ci.sort!
# p newstr
# def ciSort(arry) 
# 	back = arry
# 	for i in 0..arry.length-1
# 		j = i + 1
# 		for j in j..arry.length
# 			if arry[i].to_s > arry[j].to_s
# 				tem = back[i]
# 				back[i] = back[j]
# 				back[j] = tem
# 			end
# 		end
# 	end
# end

# for i in 0..ci.length-1
# 	j = i + 1
# 	k = i
# 	for j in j..ci.length
# 		if ci[k].to_s > ci[j].to_s
# 			tem = ci[k]
# 			ci[k] = ci[j]
# 			ci[j] = tem
# 		end
# 		# p (ci[i].to_s < ci[j].to_s)
# 	end	
# end

# p ci[0] < ci[2]
# p ci















