=begin
chapter10.rb
数值类（Numeric）
=end

=begin


																		---------Fixnum-------
																		|				(普通整数)
																		|
																		|
																		-
							--------Integer--------
							|				　(整数)				-
							|											|
							|											|
--------------|											|
--------------											---------Bignum-------
																						　(大整数)
	数值类(Numeric)

--------------|
--------------|
							|
							|--------Float--------
											　(浮点)



							-------------
							-							-
							|								-
							|									-
							|										-
							|										-
							|										-
							|										-
							|									-
							------------------
							|	＼
							|		＼
							|			＼
							|				＼
							|					＼
							|						＼	
							|							＼
							|								|
=end

# divmod 
# p 10.divmod(3.5)  #=> [2, 3.0]
# p 10.divmod(-3.5) #=> [-3, -0.5]
# p -10.divmod(3.5) #=> [-3, -0.5]

# # modulo same as %
# p 10.modulo(3.5)	#=> 3.0
# p 10.modulo(-3.5)　#=> －０５

# # remainder
# p 10.remainder(3.5) 	#=> 3.0
# p 10.remainder(-3.5)	#=> 3.0

# p 1 / 0   #=> error
# p 1 / 0.0 #=> Infinity


# # to_i方法会省略小数点后数
# p 10.to_f		#=> 10.0
# p 10.8.to_i #=> 10

# # round根据四舍五入方法取舍
# p 10.3.round #=> 10
# p 10.8.round #=> 11

# # ceil　　向上取最小值
# p 1.5.ceil #=> 2
# p 1.2.ceil #=> 2

# # floor　向下取最大值
# p 1.5.floor #=> 1
# p 1.2.floor #=> 1

# def pb(i)
# 	printf("%8b\n", i & 0b11111111)
# end

# b = 0b11101100
# p pb(b)

# # 迭代处理
# ary1 = []
# ary2 = []
# ary3 = []
# 10.times { |i|
# 	ary << i
# }
# 2.upto(10) { |i|
# 	ary2 << i
# }
# 10.downto(2) {|i|
# 	ary3 << i
# }

# # from.step(to, step){|i| ..}

# arry = []
# 2.step(10, 3) { |i|
# 	p i
# }

# def CelsToFahr(cels)
# 	fahr = cels * 9 / 5 + 32
# 	p fahr
# end
# CelsToFahr(37)

# def FahrToCels(fahr)
# 	cels = (fahr - 32)*5/9
# 	p cels
# end
# FahrToCels(98)


# require "Math"
# include Math
# 5.times { |i|
# 	random = rand(6) + 1
# 	p random
# }

def prime?(num)
	# if num > 2
	# 	n = num - 1
	# 	n.downto(2) { |i| 
	# 		# n = i -1
	# 		if num % i == 0 
	# 			print "num is not prime\n"
	# 			break
	# 		elsif i == 2
	# 			print "num is prime\n"
	# 		end
				
	# 	}
	# else
	# 	print "please input num (> 2 ) \N"
	# end
	flag = false
	# backup = num
	for i in 2..num-1
		if num%i == 0
			flag  = true
			break;
		end
	end
	if flag
		p [num, "not prime"]
	else
		p [num, "is prime"]
	end
end
prime?(113)
