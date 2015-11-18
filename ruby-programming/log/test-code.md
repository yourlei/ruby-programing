# ---------next-----------
# ------------------------
# next操作会跳过本次循环，直接开始
# 下一次循环
file = open(ARGV[0])

# 过滤空白行，及以#号开始的行

while text = file.gets
	next if /^\s*s$/ =~ text
	next if /^#/ =~ text

	# 输出
	print text
end
