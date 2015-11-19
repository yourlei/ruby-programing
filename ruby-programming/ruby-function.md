----------2015-11-18--------
------------------
	读取命令行输入
------------------
１．ARGV数组
<code>
	#=> 获取命令行输入的第一个参数
	name = ARGV[0]
	print "name:", name, "\n"
</code>


------------------
	函数－Function
------------------

-------１．比较类函数-------
--------------------------

-------判空->empty?---------
<code>
	"string".empty? #=> false
	"".empty?				#=> true
</code>

-------相等->equal?---------
# 该函数主要用于比较两个对象是否为同一对象
<code>
	str1 = "foo"
	str2 = str1
	str3 = 'f' + 'o' + 'o'
	p str1.equal?(str2) #=> true
	p str1.equal?(str3) #=> false
</code>

-------相等->eql?-----------
<code>
	p 1.0.eql?(1) #=> flase
	p 1.0 == 1    #=> true
</code>
#　从输出结果可知使用　'=='时会对数据进行变换，而eql?方法则不会进行变换，直接比较


----------2015-11-19--------
-----------类和实例-----------
----------instance_of?-------

<!-- 判断对象是某个类的实例 -->
<code>
	arr = []
	str = "string"

	p arr.instanc_of?(Array) #=> true
	p str.instance_of?(String) #=> true
	p str.instance_of?(Object) #=> true
</code>

-----------is_a?------------

<!-- 判断继承关系 -->
<code>
	arr = []
	str = "string"

	p arr.is_a?(Array) #=> true
	p str.is_a?(String) #=> true
	p str.is_a?(Object) #=> true
</code>


