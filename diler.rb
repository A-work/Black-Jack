class Diler < Users
  CHOSE_SCORE = 17

  def win_logic
    add_card if score < CHOSE_SCORE && card_on_hand.size == 2
  end
end