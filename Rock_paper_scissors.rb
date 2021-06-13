all_clear = 1
while all_clear == 1 do
again_rps = 1
#繰り返し処理
while again_rps == 1 do
  puts "じゃんけん・・・"
  puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
  me_rps = gets.to_i

  if me_rps == 0
    case_me_rps = "グー"
  elsif me_rps == 1
    case_me_rps = "チョキ"
  elsif me_rps == 2
    case_me_rps= "パー"
  elsif me_rps == 3
    case_me_rps = "戦わない"
    look_ng = 1
    puts "ゲーム終わり"
    break
  else
    look_ng = 1
    puts "ゲーム終わり"
    break
  end
  puts "ホイ！"
  puts "----------"
  #enemy_rpsにランダムで0~2を入れる処理
  enemy_rps = rand(0..2)

  if enemy_rps == 0
     case_enemy_rps = "グー"
  elsif enemy_rps == 1
      case_enemy_rps = "チョキ"
  elsif enemy_rps == 2
      case_enemy_rps = "パー"
  end

  #あなたが選んだものを出力する
  case case_me_rps
    when "グー"
        puts "あなたはグーを出しました"
        puts "相手は#{case_enemy_rps}を出しました"
    when "チョキ"
        puts "あなたはチョキを出しました"
        puts "相手は#{case_enemy_rps}を出しました"
    when "パー"
        puts "あなたはパーを出しました"
        puts "相手は#{case_enemy_rps}を出しました"
    else
        look_ng = 1
        break
  end

  #じゃんけんで戦った結果を判定、出力する
  if me_rps == 0 && enemy_rps == 0
    result_rps = "あいこです"
    puts "#{result_rps}"
    again_rps = 1
  elsif me_rps == 0 && enemy_rps == 1
    result_rps = "あなたの勝ちです"
    puts "#{result_rps}"
    next_result = 1
    break
  elsif me_rps == 0 && enemy_rps == 2
    result_rps = "あなたの負けです"
    puts "#{result_rps}"
    next_result = 0
    break
  elsif me_rps == 1 && enemy_rps == 0
    result_rps = "あなたの負けです"
    puts "#{result_rps}"
    next_result = 0
    break
  elsif me_rps == 1 && enemy_rps == 1
    result_rps = "あいこです"
    puts "#{result_rps}"
    again_rps == 1
  elsif me_rps == 1 && enemy_rps == 2
    result_rps = "あなたの勝ちです"
    puts "#{result_rps}"
    next_result = 1
    break
  elsif me_rps == 2 && enemy_rps == 0
    result_rps = "あなたの勝ちです"
    puts "#{result_rps}"
    next_result = 1
    break
  elsif me_rps == 2 && enemy_rps == 1
    result_rps = "あなたの負けです"
    puts "#{result_rps}"
    next_result = 0
    break
  elsif me_rps == 2 && enemy_rps == 2
    result_rps = "あいこです"
    puts "#{result_rps}"
    again_rps = 1
  else
  break
  end
  puts "----------"
end

if look_ng == 1
   break
else
#あっち向いてホイ
puts "----------"
puts "あっち向いて〜"
puts "0(右) 1(左) 2(上) 3(下)"
 me_look= gets.to_i

if me_look == 0
    case_me_look = "右"
elsif me_look == 1
    case_me_look = "左"
elsif me_look == 2
    case_me_look= "上"
elsif me_look == 3
    case_me_look = "下"
else
    puts "ゲーム終わり"
    break

end

#enemy_lookにランダムで0~3を入れる処理
enemy_look = rand(0..3)

if enemy_look == 0
    case_enemy_look = "右"
elsif enemy_look == 1
    case_enemy_look = "左"
elsif enemy_look == 2
    case_enemy_look = "上"
elsif enemy_look == 3
    case_enemy_look = "下"
end

#あなたが選んだものを出力する
case case_me_look
when "右"
  puts "あなたは右を出しました"
 puts "相手は#{case_enemy_look}を出しました"
when "左"
  puts "あなたは左を出しました"
 puts "相手は#{case_enemy_look}を出しました"
when "上"
  puts "あなたは上を出しました"
  puts "相手は#{case_enemy_look}を出しました"
when "下"
    puts "あなたは下を出しました"
    puts "相手は#{case_enemy_look}を出しました"
  else
  puts "戦いません"
end

#あっち向いてホイで戦った結果を判定、出力する
#あなたがじゃんけんで勝った場合
if next_result == 1

if me_look == 0 && enemy_look == 0
    result_look = "あなたの勝ちです"
    puts "#{result_look}"

elsif me_look == 0 && enemy_look == 1
     result_look = "あなたの負けです"
     puts "#{result_look}"

elsif me_look == 0 && enemy_look == 2
     result_look = "あなたの負けです"
     puts "#{result_look}"

elsif me_look == 0 && enemy_look == 3
        result_look = "あなたの負けです"
        puts "#{result_look}"

elsif me_look == 1 && enemy_look == 0
     result_look = "あなたの負けです"
     puts "#{result_look}"

elsif me_look == 1 && enemy_look == 1
     result_look = "あなたの勝ちです"
     puts "#{result_look}"

elsif me_look == 1 && enemy_look == 2
     result_look = "あなたの負けです"
     puts "#{result_look}"

elsif me_look == 1 && enemy_look == 3
        result_look = "あなたの負けです"
        puts "#{result_look}"

 elsif me_look == 2 && enemy_look == 0
     result_look = "あなたの負けです"
     puts "#{result_look}"

 elsif me_look == 2 && enemy_look == 1
     result_look = "あなたの負けです"
     puts "#{result_look}"

 elsif me_look == 2 && enemy_look == 2
     result_look = "あなたの勝ちです"
     puts "#{result_look}"

elsif me_look == 2 && enemy_look == 3
        result_look = "あなたの負けです"
        puts "#{result_look}"

elsif me_look == 3 && enemy_look == 0
        result_look = "あなたの負けです"
        puts "#{result_look}"

elsif me_look == 3 && enemy_look == 1
        result_look = "あなたの負けです"
        puts "#{result_look}"

elsif me_look == 3 && enemy_look == 2
        result_look = "あなたの負けです"
        puts "#{result_look}"

elsif me_look == 3 && enemy_look == 3
           result_look = "あなたの勝ちです"
           puts "#{result_look}"

 else

 end

else

 #あなたがじゃんけんで負けた場合
if me_look == 0 && enemy_look == 0
    result_look = "あなたの負けです"
    puts "#{result_look}"

elsif me_look == 0 && enemy_look == 1
     result_look = "あなたの勝ちです"
     puts "#{result_look}"

elsif me_look == 0 && enemy_look == 2
     result_look = "あなたの勝ちです"
     puts "#{result_look}"

elsif me_look == 0 && enemy_look == 3
        result_look = "あなたの勝ちです"
        puts "#{result_look}"

elsif me_look == 1 && enemy_look == 0
     result_look = "あなたの勝ちです"
     puts "#{result_look}"

elsif me_look == 1 && enemy_look == 1
     result_look = "あなたの負けです"
     puts "#{result_look}"

elsif me_look == 1 && enemy_look == 2
     result_look = "あなたの勝ちです"
     puts "#{result_look}"

elsif me_look == 1 && enemy_look == 3
        result_look = "あなたの勝ちです"
        puts "#{result_look}"

 elsif me_look == 2 && enemy_look == 0
     result_look = "あなたの勝ちです"
     puts "#{result_look}"

 elsif me_look == 2 && enemy_look == 1
     result_look = "あなたの勝ちです"
     puts "#{result_look}"

 elsif me_look == 2 && enemy_look == 2
     result_look = "あなたの負けです"
     puts "#{result_look}"

elsif me_look == 2 && enemy_look == 3
        result_look = "あなたの勝ちです"
        puts "#{result_look}"

elsif me_look == 3 && enemy_look == 0
        result_look = "あなたの勝ちです"
        puts "#{result_look}"

elsif me_look == 3 && enemy_look == 1
        result_look = "あなたの勝ちです"
        puts "#{result_look}"

elsif me_look == 3 && enemy_look == 2
        result_look = "あなたの勝ちです"
        puts "#{result_look}"

elsif me_look == 3 && enemy_look == 3
           result_look = "あなたの負けです"
           puts "#{result_look}"

 else
 end
end

puts "----------"
end
end
