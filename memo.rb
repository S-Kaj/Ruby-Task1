require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i

if memo_type == 1 then  # 新規メモ作成
    puts "新規でメモを作成します。ファイル名は memo.csv です。"
    puts "入力が終わったら、「Control + D」で終了してください。"
    puts "----------"

    memo_main = readlines

    CSV.open('memo.csv','w') do |test|
        test << memo_main
       end

elsif memo_type == 2 then   # 既存のメモ編集(追記？)
    puts "既存のメモファイル memo.csv に追記します。"
    puts "入力が終わったら、「Control + D」で終了してください。"
    puts "----------"

    memo_main = readlines

    CSV.open('memo.csv','a') do |test|
        test << memo_main
       end

else
    puts "半角で1か2を入力してください！！"
end