def pon
  p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  p "じゃんけんポン！"
end
pon

def janken
  p "[0]:グー✊ [1]:チョキ🤘 [2]:パー✋ [3]:戦わない🚨"
  player = gets.to_i
  program = rand(3)

  hands = ["グー", "チョキ", "パー", "棄権"]

  p "あなたの手は #{hands[player]}, 相手の手は #{hands[program]}"
  p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

  if player == program
    p "あいこでショ！"
    #return trueでnexr_gameに
  elsif (player == 0 && program == 1) || (player == 1 && program == 2) || (player == 2 && program == 0)
    p "勝ちーー！"
    return acchihoi_winer
  elsif (player == 1 && program == 0) || (player == 2 && program == 1) || (player == 0 && program == 2)
    p "負けーー！"
    return acchihoi_loser
  else player < 0 || 3 < player
    p "終わりです。お疲れ様です。"
    return  
  end
end

def acchihoi_winer
  p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  p "あっちむいてーーホイ！"
  p "[0]:👆 [1]:👉 [2]:👇 [3]:👈 [4]:戦わない🚨"

  player = gets.to_i 
  program = rand(4)

  hands = ["上", "右", "下", "左", "棄権"]

  p "あなたの手は#{hands[player]}, 相手は#{hands[program]}を向きました"
  p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

  if player < 0 || 4 <= player
    p "終わりです。お疲れ様です。"
    return
  elsif player == program
    p "勝ちーー！！やったー！"
    pon
    #return trueでnexr_gameに
  else
    p "ダメでした！もう一度じゃんけんから！"
    pon
    #return trueでnexr_gameに
  end
end

def acchihoi_loser
  p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  p "あっちむいてーーホイ！"
  p "[0]:👆 [1]:👉 [2]:👇 [3]:👈 [4]:戦わない🚨"
  
  player = gets.to_i 
  program = rand(4)
  
  hands = ["上", "右", "下", "左", "棄権"]
  
  p "相手の手は#{hands[program]}, あなたは#{hands[player]}を向きました。"
  p "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  if player < 0 || 4 <= player
    p "終わりです。お疲れ様です。"
    return
  elsif player == program
    p "負けーー！！残念！"
    pon
    #return trueでnexr_gameに
  else
    p "セーフ！もう一度じゃんけんから！"
    pon
    #return trueでnexr_gameに
  end
end

next_game = true

while next_game do
    next_game = janken
end




