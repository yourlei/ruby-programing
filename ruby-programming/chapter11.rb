# # =begin
# # chapter11.rb
# # 数组
# # =end
# # # nums = []
# # # for i in 1..5
# # # 	nums << i
# # # end
# # # p nums.size

# # #　获取元素
# # # p nums[1, 3] #=> [2, 3, 4]
# # # p nums[1, 1] #=> [2]

# # # p nums[1..4] #=> [2, 3, 4, 5]
# # # p nums[1..5] #=> [2, 3, 4, 5]

# # # p nums[-1] #=> 5

# # # p nums.at(4) #=> 5
# # # p nums.slice(4) #=> 5
# # # p nums.slice(1, 3) #=> [2, 3, 4]
# # # p nums.slice(1..4) #=> [2, 3, 4, 5]


# # # 改写元素

# # # nums[1, 3] = ["a", "d", "e"]
# # # p nums

# # # # 插入元素
# # # nums[2, 0] = ["b", "c"]
# # # p nums

# # # p nums.values_at(1,3, 5)

# # # 数组作为集合
# # # char = []
# # # for i in 1..5
# # # 	char << (56 + i).to_s
# # # end
# # # p char

# # # lang = %w(ruby perl python java)
# # # p lang
# # # #=> ["ruby", "perl", "python", "java"]

# # # # 杂凑转为数组
# # # colors = {"black" => "#000", "red" => "#F00"}
# # # p colors.to_a #=> [["black", "#000"], ["red", "#F00"]]

# # nums = [1, 2, 3]
# # even = [2, 4, 6]

# # # +运算直接将两个数组连接在一起，即使
# # # 含有重复元素
# # p nums + even

# # # | 运算则相当于两个集合间的并集运算
# # # [1, 2, 3, 2, 4, 6]

# # p nums | even # [1, 2, 3, 4, 6]


# # str1 = %w(a b c)
# # str2 = %w(b c d)

# # # &运算相当于取集合中的交集
# # p str1 & str2
# # # &运算相当于取集合中的并集
# # p str1 | str2


# # # 作为列表的数组
# # alpha = %w(a b c d e f)
# # # p alpha
# # # push 栈顶压人一个元素, 返回的是压人
# # # 一个元素后的整个数组
# # alpha.push('g')
# # # pop 栈顶取出一个元素, 返回值为栈顶
# # # 元素
# # alpha.pop() #　'g'


# # # shift 从栈底弹出一个元素并返回
# # alpha.shift() # 'a'

# # # unshift 从栈底插入一个元素，并返回
# # # 修改后的数组
# # alpha.unshift('A')

# # # concat()将一个数组连接到另一个数组上
# # alpha.concat(['1', '2', '3'])
# # p alpha

# # alpha[1..3] = ['B']
# # # ["A", "B", "1", "2", "3"]

# # # a = %w(1 nil 3 nil nil)
# # a = [1,  nil, 3, nil, nil]
# # # compact!方法删除数组中的nil元素
# # a.compact! # [1, 3]

# # # 删除数组中的x元素
# # a.delete(1)
# # p a　# 3
# # a.push(4, 5, 6)
# # # delete_at(n)　删除数组中索引n处的元素
# # a.delete_at(1)

# # a.delete_if{|i|
# # 	i > 4
# # }

# # string = %w|a b c d e f|
# # string.slice!(2) # 'c'

# # string.slice!(1..3)

# # num = %w(1 2 3 4 5 3 4)
# # num.uniq!
# # ["1", "2", "3", "4", "5"]

# # # 对数组中的所有元素进行区块运算
# values = []
# for i in 1..5
# 	values << i
# end

# values.collect! { |item|
# 	item * 2
# }
# p values #=> [2, 4, 6, 8, 10]

# change_values = values.collect { |item|
# 	item*2
# }
# # p change_values
# # [4, 8, 12, 16, 20]
# # p values 
# #  [2, 4, 6, 8, 10]

# # fill
# # fill(value)
# # fill(value, begin)
# # fill(value, begin, end)
# # fill(value, n..m)

# values.fill(0)
# p values

# values.fill(2, 1)
# p values

# values.fill(3, 1, 4)
# p values

# values.fill(9, 1..4)
# p values

# # flatten
# # 将数组进行扁平化处理
# name = [1, [2, [3]], [2], 4]
# name.flatten!
# p name # [1, 2, 3, 2, 4]

# # reverse　逆转数组中的元素
# p name.reverse!

# p name.sort!

# colors = %w(red white yellow black)
# p colors.sort!

# 练习题
nums = []
for i in 1..100
	nums << i
end
# p nums
# back_nums = []
# for i in 0...nums.length
# 	back_nums[i] = nums[i]
# end

# p back_nums
back_nums = nums.collect {|item|
	item*2
}
# p back_nums 
three_nums = []
# 3.step(100, 3) {|i|
# 	three_numd << nums[i]
# }

# ------------------------
# 取出３的倍数
for i in 0..99
	if nums[i] % 3 == 0 
		three_nums << nums[i]
	end
end
# p three_nums
# ------------------------
# 删除３的倍数的元素
nums.delete_if{|item|
	item % 3 == 0
}
# p nums

# p nums.reverse!
# p nums.sort!

sum = 0
nums.each {|item|
	sum = sum + item
}

p sum

# inject 
resutl = 0
nums.inject{ |result, item|
	resutl += item
}
p resutl