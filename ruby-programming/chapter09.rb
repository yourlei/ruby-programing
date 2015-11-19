=begin
chapter09 错误处理与例外
=end

# 文件复制
def copy(from, to)
	src = open(from)
	begin
		dst = open(to, 'w')
		data = src.read
		dst.write(data)
		dst.close
	ensure
		src.close
	end
end

# copy('./log/test.md', './log/copy-test.md')

file = ARGV[0]

begin
	io = open('./log/test.md')
rescue
	sleep 10
	retry
end

data = io.read
io.close
