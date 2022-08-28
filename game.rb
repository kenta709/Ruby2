jadge = 0
rps = ["グー","チョキ","パー"]
direction = ["上","下","左","右"]
draw = 0
#決着がつくまで、ゲームを繰り返す
while jadge == 0 do
    #あいこの場合は、掛け声を変える
    if draw == 1
        puts "あいこで〜"
    else
        puts "じゃんけん..."
    end
    #グー、チョキ、パーの選択を行い、結果を出力する。戦わない場合はループを抜ける
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    your_command = gets.chomp.to_i
    break if your_command == 3
    enemy_command = Random.rand(2)
    #あいこの場合は、掛け声を変える
    if draw == 1
        puts "ショ！"
        draw = 0
    else
        puts "ホイ！"
    end
    puts "---------------------"
    puts "あなた:"+rps[your_command]+"を出しました"
    puts "相手:"+rps[enemy_command]+"を出しました"
    #じゃんけんの勝ち負けを判断
    if (your_command == 0 && enemy_command == 1)||(your_command == 1 && enemy_command == 2)||(your_command == 2 && enemy_command == 0)
        jadge = 1
    elsif your_command == enemy_command
        jadge = 0
        draw = 1
    else
        jadge = -1
    end
    #じゃんけんに勝ち負けがある場合はあっち向いてホイを行う
    if jadge !=0
        puts "あっち向いて〜"
        puts "0(上)1(下)2(左)3(右)"
        your_direction = gets.chomp.to_i
        enemy_direction = Random.rand(3)
        puts "ホイ！"
        puts "---------------------"
        puts "あなた:" + direction[your_direction]
        puts "相手:" + direction[enemy_direction]
    end
    #あっち向いてホイが失敗した場合は初めに戻る
    if your_direction != enemy_direction
        jadge = 0
    end
end
#勝敗の判断を行う
if jadge == 1
    puts "あなたは勝ちました"
elsif jadge == -1
    puts "あなたは負けました"
end
    