QUIT_COMMAND = 3
class JankenMatch
  RESULTS = ["勝ち", "アイコ", "負け"]
  SELECTS = ["グー", "チョキ", "パー", "戦わない"]
  attr_accessor :player_select, :cpu_select #attr_accessorメソッド クラス外部からインスタンス変数へのアクセスが可能
  def initialize(player_select:, cpu_select:) #newメソッドが実行された時に同時に実行される
    @player_select = player_select #self.でも@でもいい。このクラスのメソッドが使用できるようにセッティング
    @cpu_select = cpu_select
  end
  def win? #慣用的に、真偽値を返すタイプのメソッドを示すために使われる。
    (player_select == 0 && cpu_select == 1) ||
      (player_select == 1 && cpu_select == 2) ||
      (player_select == 2 && cpu_select == 0)
  end
  def aiko? #慣用的に、真偽値を返すタイプのメソッドを示すために使われる。
    player_select == cpu_select
  end
  def lose? #慣用的に、真偽値を返すタイプのメソッドを示すために使われる。
    !win? && !aiko?
  end
end
class AcchimuiteMatch
  SELECTS = ["上", "右", "下", "左"]
end
def gets_select(selects, message:) #引数はselectsとmessage:(キーワード:既定値で規定値がない)
  selected = nil #nil「何も存在しない」
  while selected.nil? #nil?メソッドではレシーバーがnilのときtrueを返し、nilではない場合falseを返す
    puts message #じゃんけん・・・
    puts selects.map.with_index { |s, i| "#{i}(#{s})" }.join #0(グー)1(チョキ)2(パー)3(戦わない) 　iは配列のindex .join配列.join で配列の中の要素を文字列にしてそのまま連結させます
    s = gets.to_i #sに入力値を入れる
    if selects[s] #配列数に一致するものがあればそのまま入力値を入れる
      selected = s
    else #無効な物を入力するともう一度while文を通る
      puts "無効な入力です"
    end
  end
  selected #sが返り値となる
end
def janken(player_select, message:)
  cpu_select = rand(0..2) #ランダムに生成
  puts message
  puts "ーーーーーーーーーー"
  puts "あなた：#{JankenMatch::SELECTS[player_select]}を出しました" #クラスからメソッドや定数を呼び出すとき::を使用
  puts "相手：#{JankenMatch::SELECTS[cpu_select]}を出しました"
  puts "ーーーーーーーーーー"
  JankenMatch.new(player_select: player_select, cpu_select: cpu_select) #newメソッドでインスタンスを生成
end
def acchimuite_hoi(result) #resultがaiko以外の時に実行？？
  player_select = gets_select(AcchimuiteMatch::SELECTS, message: "あっち向いて〜")
  cpu_select = rand(0..3)
  puts "ホイ！"
  puts "ーーーーーーーーーー"
  puts "あなた：#{AcchimuiteMatch::SELECTS[player_select]}"
  puts "相手：#{AcchimuiteMatch::SELECTS[cpu_select]}"
  puts "ーーーーーーーーーー"
  return false if player_select != cpu_select #もしplayer_select != cpu_selectなら、acchimuite_hoi(result)はfalseを返す
  puts "あなたの#{result.win? ? "勝ち" : "負け"}です。"
  true #もしplayer_select == cpu_selectならtrueを返す
end
def execute #実行する
  message1, message2 = "じゃんけん・・・", "ホイ！"
  while true #条件式がtrue 常に繰り返される
    player_select = gets_select(JankenMatch::SELECTS, message: message1) #selectedをplayer_selectに入れる
    #selectsにJankenMatch::SELECTSを指定。
    #messageにmessage: message1を指定。
    if player_select == QUIT_COMMAND #もし3だったら遊びを終了
      puts "また遊びましょう！"
      return #return になるとメソッドが終了する ゲーム終了
    end
    result = janken(player_select, message: message2) #win? aiko? lose? のtrue またはfalseが入っている
    if result.aiko? #retult.aiko? == true だったら
      message1, message2 = "アイコで・・・", "ショ！"
    else #retult.aiko? == false だったら
      return if acchimuite_hoi(result) #もしacchimuite_hoi(result)の結果がtrueなら、returnでメソッドが終了
      message1, message2 = "じゃんけん・・・", "ホイ！" #もしacchimuite_hoi(result)の結果がfalseならゲーム継続
    end
  end #returnが実行されたらwhileを抜けてexecuteが終了
execute