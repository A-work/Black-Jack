class Card
  CARD_SUITS = %w(♥ ♣ ♦ ♠)
  CARD_VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)

  attr_reader :card

  def initialize
    @card = generate_card
  end

  private
  def generate_card
    card = []
    CARD_SUITS.each do |suit|
      CARD_VALUES.each do |value|
        card << Card.new(suit, value)
      end
    end
    card.shuffle
  end

end