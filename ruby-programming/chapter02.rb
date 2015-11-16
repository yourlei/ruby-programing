=begin
	Array
=end

# names = ["小林", "林", "高野",　"圣灵"]	
names = ["小明", "小李", "小花", "小小"]
# # names = ["Jhon", "Jack", "Mary", "Ana"]
# names.each { |value| 
# 	print("i am: " + value, "\n")	
# }
# result
=begin
i am: 小明
i am: 小李
i am: 小花
i am: 小小
=end
names.each { | value|
	if /花/ =~ value
		puts value
	end
}
# 小花


# nums = 1..10
# p(nums) # [1..10]

# nums.each { | value|
# 	p(value)
# }

=begin
HASH
=end
font_size = {"normal" => "14px", "small" => "12px", "big" => "16px"}

# p font_size["normal"]
# p font_size["small"]
# p font_size["big"]
=begin
"14px"
"12px"
"16px"
=end
font_size.each { |key, value|
	p(key + ": " + value)
}
=begin
"normal: 14px"
"small: 12px"
"big: 16px"
=end

# 正则表达式
p /ruby/ =~ "hello, ruby" #=> 7
p /RUBY/ =~ 'hello, ruby' #=> nil
p /RUBY/i =~ 'hello, ruby' #=> 7
