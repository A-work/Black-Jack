require_relative "score"
require_relative "bank"
require_relative "card"
require_relative "users"
require_relative "player"
require_relative "diler"

class Game
  def initialize(player1:, player2:)
    @player1 = player1
    @player2 = player2
  end

  def clear_both_hand
    @player1.clear_hand
    @player2.clear_hand
  end

  def info_member
    puts "#{@player1.name}, на руках #{@player1.deposit.show}"
    puts "#{@player2.name}, на руках #{@player2.deposit.show}"
  end

  def info_partion
    @player1.info
    @player2.info
    @player1.clear_hand
    @player2.clear_hand
  end

  def identify_winner(bank)
    @player1.score = 0 if @player1.score > 21
    @player2.score = 0 if @player2.score > 21
    if @player1.score > @player2.score
      @player1.get_money(bank)
      @player1
    elsif @player1.score == @player2.score
      bank /= 2
      @player1.get_money(bank)
      @player2.get_money(bank)
      return nil
    else
      @player2.get_money(bank)
      @player2
    end
  end
end