=begin
chapter08 类于模块
=end

# arr = []
# str =  "hello ruby"

# p arr.instance_of?(Array)  #=> true
# p str.instance_of?(String) #=> true
# p arr.instance_of?(String) #=> false
# p str.instance_of?(Object) #=> false


# 判断继承关系
# p str.is_a?(String)
# p str.is_a?(Object)


# 定义类
# -----------------------------
=begin
	initialize作为初始化函数，传递给new的变量
	都会传递给initialize方法
=end

class HelloWorld
	# attr_reader, attr_writer变量的读写方法
	# attr_writer :name
	# attr_reader :name
	attr_accessor :name
	attr_accessor :age
	# @@Age = 20
	def initialize(myname = 'Ruby')
		# 实例变量
		@name = myname
	end

	def hello
		print "hello, world! i am ", @name, ".\n"
	end
end

perl = HelloWorld.new('perl')
# perl.hello
# perl.name = 'python'

# 类方法
# -------------------------
class Person
	# 方式一
	def Person.say(name)
		print 'Hi, i am ', name, "\n"
	end
	# 方式二
	# def self.say(name) 
	# 	print 'Hi, i am ', name, "\n"
	# end

	# -----------------------
	# 类变量
	# 类外部访问类变量，只能通过定义方法才能访问
	# attr_accessor :count

	def initialize(myname = 'Ruby')
		@name = myname
		@@count = 0
	end
	def hello
		@@count += 1
		print 'Hello, world. i am ', @name, "\n"
	end
	def sumCount
		print @@count, "\n"
	end
end
# 方式三
# class << Person
# 	def say(name)
# 		print "Hi, i am ", name, "\n"
# 	end
# end
lua = Person.new('lua')
unity = Person.new('unity')

lua.sumCount
lua.hello
unity.hello
lua.sumCount
# ----------------------------------
# 引用类方法的两种方式
=begin
	１．class.method
	２．class::method
=end

Person.say('ruby')
# Person::say("ruby")


# 扩充类
# ----------------------------------
class String
	# 计算字符串中单词数量
	def count_word
		ary = self.split(/\s+/)
		return ary.size
	end
end
# p "Hello world, i am ruby.".count_word

# 继承
# ---------------------------------
class RingArray < Array
	def [](i)
		idx = i % size
		super(idx)
	end
end

eto = RingArray['zhang', 'wang', 'zhao', 'li',
								'sui', 'hai', 'tian', 'ling']
p eto[6]	#=> 'tian'						
p eto[9]  #=> 'wang'
p eto[-1] #=> 'ling'


# 限制方法的调用
# public, private, protected

class AccTest 
	attr_accessor :x, :y
	# 将对x, y的赋值设为保护类型
	# protected :x= , :y=

	def initialize(a=0, b=0)
		@x = x
		@y = y
	end

	def swap(other)
		xtem = @x
		ytem = @y

		@x = other.x
		@y = other.y

		other.x = xtem
		other.y = ytem
		self
	end

	# public
	# def pub
	# 	puts 'pub is a public method'
	# end

	# private
	# def priv
	# 	puts 'priv is a private method'
	# end

	# protected
	# def prot
	# 	puts 'prot is a protected method'
	# end
end

# acc = AccTest.new
# acc.pub
# acc.priv #=> false
# acc.prot #=> false
acc0 = AccTest.new
acc1 = AccTest.new(1, 2)

# ---------------------

p [acc0.x, acc0.y] #=> nil
p [acc1.x, acc1.y] #=> nil

acc0.swap(acc1)
# p acc0.x, acc0

# 面向对象
class PersonInfo
	attr_accessor :name
	attr_accessor :birth_date
	attr_accessor :address
	attr_accessor :tel

	def initialize(name, birth=90, addr='guangzhou', tel='123')
		@name = name
		@birth_date = birth
		@address = addr
		@tel = tel
	end
end

class AddressBook
	attr_accessor :name
	attr_accessor :data

	def initialize(idInfo)
		@data = idInfo
	end
	def search_info(name)
		for i in @data
			if i.name == name
				print 'name:', i.name, ',birth:', i.birth_date,
							',address:', i.address, ',tel:', i.tel, "\n"
			end
		end
	end
end

person1 = PersonInfo.new('ming')
# p person1.tel
person2 = PersonInfo.new('marry')

dataInfo = [person1, person2] 

book = AddressBook.new(dataInfo)
book.search_info('marry')

# book.data = dataInfo



