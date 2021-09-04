p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
p "じゃんけんポン！"

def janken
  p "[0]:グー✊ [1]:チョキ🤘 [2]:パー✋ [3]:戦わない🚨"
  player = gets.to_i
  program = rand(3)

  hands = ["グー", "チョキ", "パー", "棄権"]

  p "あなたの手は #{hands[player]}, 相手の手は #{hands[program]}"
  p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

  if player == program
    p "あいこでショ！"
    return true
  elsif (player == 0 && program == 1) || (player == 1 && program == 2) || (player == 2 && program == 0)
    p "勝ちーー！"
    return acchihoi
  elsif (player == 1 && program == 0) || (player == 2 && program == 1) || (player == 0 && program == 2)
    p "負けーー！"
    return acchihoi
  else player < 0 || 3 < player
    p "終わりです。お疲れ様です。"
    return  
  end
end

def acchihoi
  p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  p "あっちむいてーーホイ！"
  p "[0]:👆 [1]:👉 [2]:👇 [3]:👈 [4]:戦わない🚨"

  player = gets.to_i 
  program = rand(4)

  hands = ["上", "右", "下", "左", "棄権"]

  p "あなたの手は #{hands[player]}, 相手の手は #{hands[program]}"
  p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  if player == 0 || player == 1 || player == 2 || player == 3
    p "じゃんけんポン！"
   return janken
  else
    p "終わりです。お疲れ様です。"
    return  
  end
end

next_game = true

while next_game do
    next_game = janken
end
