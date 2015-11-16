require "pp"
font_size = {'normal' => '+0', 'small' => '-1', 'big' => '+1'}

print "<html>\n<title>font size list</title>\n"
print "<body>\n<p>\n"

font_size.each { |key, value|
	print "<font size = '", value, "'>", key, "</font> <br/>", "\n"
}
print "</p>\n</body>\n</html>\n "

# 将结果输出到某个文件，使用重定向指令
# ruby filename.rb > filename.html