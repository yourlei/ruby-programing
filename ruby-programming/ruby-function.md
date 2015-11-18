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
