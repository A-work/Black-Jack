class Card
  DECK = [
    [:"2♣", 2],
    [:"3♣", 3],
    [:"4♣", 4],
    [:"5♣", 5],
    [:"6♣", 6],
    [:"7♣", 7],
    [:"8♣", 8],
    [:"9♣", 9],
    [:"10♣", 10],
    [:"В♣", 10],
    [:"Д♣", 10],
    [:"К♣", 10],
    [:"T♣", 1],
    [:"2♥", 2],
    [:"3♥", 3],
    [:"4♥", 4],
    [:"5♥", 5],
    [:"6♥", 6],
    [:"7♥", 7],
    [:"8♥", 8],
    [:"9♥", 9],
    [:"10♥", 10],
    [:"В♥", 10],
    [:"Д♥", 10],
    [:"К♥", 10],
    [:"T♥", 1],
    [:"2♠", 2],
    [:"3♠", 3],
    [:"4♠", 4],
    [:"5♠", 5],
    [:"6♠", 6],
    [:"7♠", 7],
    [:"8♠", 8],
    [:"9♠", 9],
    [:"10♠", 10],
    [:"В♠", 10],
    [:"Д♠", 10],
    [:"К♠", 10],
    [:"T♠", 1],
    [:"2♦", 2],
    [:"3♦", 3],
    [:"4♦", 4],
    [:"5♦", 5],
    [:"6♦", 6],
    [:"7♦", 7],
    [:"8♦", 8],
    [:"9♦", 9],
    [:"10♦", 10],
    [:"В♦", 10],
    [:"Д♦", 10],
    [:"К♦", 10],
    [:"T♦", 1]
  ].freeze

  attr_reader :card

  def initialize
    @card ||= random
  end

  def add
    @card << random.first if @card.size == 2
  end

  def new
    @card = random
  end

  alias show card

  private

  def random
    DECK.sample(2)
  end
end