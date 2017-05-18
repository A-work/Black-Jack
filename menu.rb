require_relative "game"

system("clear")

puts "Введите ваше имя"
name = gets.chomp

player = Player.new(name: name)
diler = Diler.new
game = Game.new(player1: player, player2: diler)

puts "К игре присоеденились"
game.info_member
puts "Ставки сделаны"

step = 0
loop do
  bank = player.bet + diler.bet
  puts "\nХод №#{step += 1}"
  puts "Карты дилера [* *]"
  player.info
  puts "Выше действие? 1 - взять карту, 2 - пропустить ход, 3 - вскрыться, 0 - exit"
  chose = gets.to_i
  break if chose.zero?
  case chose
  when 1
    player.add_card
    diler.win_logic
  when 2
    diler.win_logic
  when 3
    puts "Карты открыты" if diler.win_logic.nil?
  end

  winner = game.identify_winner(bank)
  system("clear")

  if winner.nil?
    puts "\t\nНичья\n\n"
  else
    puts "\tВыйграл #{winner.name}"
  end
  game.info_partion
  game.clear_both_hand

  puts "Еще раз? Y\\N"
  again = gets.chomp.upcase
  redo if again == "Y"
  break
end