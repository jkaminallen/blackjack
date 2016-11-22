class Hand
  attr_reader :cards

  def initialize(cards)
    @cards = []
  end


  def calculate_hand
    sum = 0
    @cards.each do |card|
      if card.face_card
         sum += 10
      elsif card.is_ace && sum >= 11
        sum += 1
      elsif card.is_ace
        sum += 11
      else
        sum += card.value.to_i
      end
    end
    @cards.each do |card|
      if sum > 21 && card.is_ace
        sum -= 10
      end
    end
    sum
  end

  def add_card(card)
    @cards << card
    @cards.flatten!
  end
end
