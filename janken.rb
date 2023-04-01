puts "最初はグー、じゃんけんー？"
count = 0
finish = 0 #終わりを決める指標

until finish == 1 do
  puts "0(グー)/ 1(チョキ)/ 2(パー)/ 3(やめる)" 
  your_hand_num = gets.to_i
  rival_hand_num = rand(0..2)
  
  if your_hand_num == 0
    your_hand = "グー"
  elsif your_hand_num == 1
    your_hand = "チョキ"
  elsif your_hand_num == 2
    your_hand = "パー"
  elsif your_hand_num == 3
    puts "終了します"
    exit
  else
    puts "その数字は該当しません"
    exit
  end
  
  if rival_hand_num == 0
    rival_hand = "グー"
  elsif rival_hand_num == 1
    rival_hand = "チョキ"
  else
    rival_hand = "パー"
  end
  
  if count == 0
    puts "ぽん！"
  else
    puts "しょ！"
  end
  puts "----------"
  puts "あなた：#{your_hand}を出しました"
  puts "相手：#{rival_hand}を出しました"
  puts "----------"
  
  
  if your_hand_num == rival_hand_num
    game_result = "パターン1"
  elsif your_hand_num == 0 and rival_hand_num == 1
    game_result = "パターン2"
  elsif your_hand_num == 1 and rival_hand_num == 2
    game_result = "パターン2"
  elsif your_hand_num == 2 and rival_hand_num == 0
    game_result = "パターン2"
  else
    game_result = "パターン3"
  end
  
  case game_result
  when "パターン1" then
    puts "あいこでー?"
    count = 1
    next
  when "パターン2", "パターン3" then
    puts "あっちむいてー？"
    puts "0(上)/ 1(右)/ 2(下)/ 3(左)"
    your_direction_num = gets.to_i
    rival_direction_num = rand(0..3)
  end
  
  if your_direction_num == 0
    your_direction = "上"
  elsif your_direction_num == 1
    your_direction = "右"
  elsif your_direction_num == 2
    your_direction = "下"
  elsif your_direction_num == 3
    your_direction = "左"
  end
  
  if rival_direction_num == 0
    rival_direction = "上"
  elsif rival_direction_num == 1
    rival_direction = "右"
  elsif rival_direction_num == 2
    rival_direction = "下"
  elsif rival_direction_num == 3
    rival_direction = "左"
  end
  
  puts "ほい!"
  
  case game_result
  when "パターン2"
    puts "----------"
    puts "あなた：#{your_direction}を指差しました"
    puts "相手：#{rival_direction}を向きました"
    puts "----------"
    if your_direction_num == rival_direction_num
      puts "あなたの勝ちです"
      finish = 1
    else
      count = 0
      puts "最初はグー、じゃんけんー？"
    end
  when "パターン3"
    puts "----------"
    puts "あなた：#{your_direction}を向きました"
    puts "相手：#{rival_direction}を指差しました"
    puts "----------"
    if your_direction_num == rival_direction_num
      puts "あなたの負けです"
      finish = 1
    else
      count = 0
      puts "最初はグー、じゃんけんー？"
    end
  end
end