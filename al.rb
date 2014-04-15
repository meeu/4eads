# encoding: utf-8
DAY = Time.now.strftime("%Y/%m/%d")
puts "提出するファイル名を入力"
FILE_NAME = gets.chomp

puts "課題ナンバーを入力"
KADAI_NUMBER = gets.chomp

puts "感想を入力"
THOUGHT = gets.chomp

open(FILE_NAME,'r+'){|f|
  f.puts "/*
 * 課題#{KADAI_NUMBER}
 * 提出日 #{DAY}
 * 学籍番号 1310***
 * 氏名 電気 とおる
 * 感想:#{THOUGHT}
*/
#{open(FILE_NAME).read}"
}

 COMMAND = "./#{FILE_NAME.delete(".c")}"
 result = `#{COMMAND}`
 
 open(FILE_NAME,'a'){|f|
  f.puts "/*
 * プログラムの動作例
    #{result}*/
"
}
