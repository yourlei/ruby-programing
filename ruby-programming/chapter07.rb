=begin
chapter07　方法 
=end
# ---------------------
=begin
	实例方法
=end
"10, 20, 30, 40".split(",")

[1, 2, 3, 4].index(2)
# print 1

1000.integer? #=> true

# ----------------------
# -------类方法----------

# a = Array.new
# f = File.open('filename.md')
# t = Time.new

# -------函数性方法-------
# sin, sleep, print

# -------定义方法----------

=begin
	def methodname(ref1, ref2)
		action
	end
=end
def helloRuby(myname = 'Ruby')
	print("hello, ", myname, "\n")
end

helloRuby()
helloRuby('Java')

