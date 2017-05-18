class Bank
  DEPOSIT = 100
  attr_reader :deposit

  def initialize
    @deposit = DEPOSIT
  end

  def bet
    raise "У вас закончились деньги" if @deposit.negative?
    @deposit -= 10
    10
  end

  def add(bank)
    @deposit += bank
  end

  alias show deposit
end