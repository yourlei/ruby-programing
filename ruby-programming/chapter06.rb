# =begin
# chapter06 循环
# =end

# # ------------------
# # ------times-------

# # count.times{...}
# 5.times {
# 	print "下雪啦！\n"
# }
# # do...end形式
# 5.times do
# 	print "好冷啊！\n"
# end

# 5.times { |i|
# 	print "这是第", i+1, "次．\n"
# }

# # --------------------
# # --------for---------
# =begin
# for 变量　in 开始值..结束值 do
# 	动作
# end
# (do可省略)
# =end

# sum = 0
# for i in 1..5
# 	sum += i
# end
# print "sum = ", sum, "\n"
# #=> 15

# =begin
# -------正式用法-------
# ---------------------
# for 变量　in 对象 do
# 	动作
# end
# (do可省略)
# =end
# names = ['ruby', 'python', 'perl']

# for name in names
# 	print name, "\n"
# end

# # ----------------------
# # ----------while-------
# =begin
# while 条件 do
# 	动作
# end
# =end
# i = 1
# while i < 3
# 	print i, "\n"
# 	i += 1
# end

# # ----------------------
# # ----------until-------
# =begin
# until 条件 do
# 	动作
# end
# -----------------------
# until与while相对，仅在条件
# 不成立下执行
# =end

# sum = 0
# i = 1

# until sum >= 50
# 	sum += i
# 	i += 1
# end
# print "sum = ", sum, "\n" 
# # sum = 55


# # -----------break------------
# # ----------------------------
# # pattern = Regexp.new(ARGV[0])
# # filename = ARGV[1]
# # max_matches = 10
# # matches = 0
# # file = open(filename)

# # while text = file.gets
# # 	if matches > max_matches
# # 		break
# # 	end
# # 	if pattern =~ text
# # 		matches += 1
# # 		print text
# # 	end
# # end
n = 0
print "break start", "\n"
['ruby', 'perl', 'pyton', 'lua'].each { |lang|
	n += 1
	if n == 3
		break
	end
	print [n, lang], "\n"
}

# # ---------next-----------
# # ------------------------
# # next操作会跳过本次循环，直接开始
# # 下一次循环
# file2 = open(ARGV[0])

# # 过滤空白行，及注释行

# while text = file2.gets
# 	next if /^\s*s$/ =~ text
# 	next if /^#/ =~ text

# 	# 输出
# 	print text
# end

# ----------redo------------
# --------------------------
i = 0
print "redo end", "\n"
['ruby', 'perl', 'pyton', 'lua'].each { |lang|
	i += 1
	if i == 3
		redo
	end
	print [i, lang], "\n"
}
# result:
# --------------------------
# [1, "ruby"]
# [2, "perl"]
# [4, "pyton"]
# [5, "lua"]


