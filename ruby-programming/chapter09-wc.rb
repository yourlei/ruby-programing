=begin
	计算文本的行数，单词数及文本大小
=end
ltoal = 0		#　总行数
wtoal = 0		#　总单词数
ctoal = 0		#	总字符数

print "  lines", "\t", " words",  "  characters", "\n" 
ARGV.each { |file|
	begin
		input = open(file)
		lines = 0
		words = 0
		counts = 0

		while line = input.gets
			lines += 1						#　文本行数
			counts += line.size		# 每行的字符数
			line.sub!(/^\s+/, "")	#　删除行头空白
			ary = line.split(/\s+/).size
			words += ary
		end
		input.close

		printf("%6d %6d %12d %s\n", lines, words, counts, file)

		ltoal += lines
		wtoal += words
		ctoal += counts

	rescue => ex
		print ex.message, "\n"
	end
}
printf("%8d %8d %8d %s\n", ltoal, wtoal, ctoal, "total")