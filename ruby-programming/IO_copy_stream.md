require 'io/console'

=begin
IO类中的copy_stream方法，包含四个参数
copy_stream(src, dist, copy_length, src_offset)
----------------------------------------------
src: 源文件
dist: 目标文件
copy_length: 复制文本的长度
src_offset: 指定复制文本的起始位置
=end

IO.copy_stream('./test.txt', './dist.txt', 5, 7)

# test.txt "hello, ruby"
# result dist.txt ruby
