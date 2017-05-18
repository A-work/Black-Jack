module Score
  def self.included(receiver)
    receiver.send :include, InstanceMethods
  end

module InstanceMethods
    def qnt_score
      @score = 0
      ace = card_on_hand.any? { |card| /T/ =~ card.to_s }
      card_on_hand.each do |_card, cost|
        @score += cost
      end
      @score += 10 if ace && @score + 10 <= 21
    end
  end
end