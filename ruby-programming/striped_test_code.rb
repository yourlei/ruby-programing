file = open(ARGV[0])


while text = file.gets
	next if /^\s*s$/ =~ text
	next if /^#/ =~ text

	# 输出
	print text
end
