class Users
  include Score

  attr_reader :name, :card, :deposit
  attr_accessor :score
  def initialize(name: "Дилер")
    @name = name
    @card = Card.new
    @deposit = Bank.new
    qnt_score
  end

  def add_card
    @card.add
    qnt_score
  end

  def info
    puts "#{name}, у вас на руках - #{card_on_hand}, счет - #{score}. Деньги: #{deposit.show}"
  end

  def bet
    @deposit.bet
  end

  def get_money(money)
    @deposit.add(money)
  end

  def card_on_hand
    @card.show
  end

  def clear_hand
    @card.new
    qnt_score
  end
end