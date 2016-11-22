require_relative 'deck'

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def is_face_card
    @value == "J" || @value == "Q" || @value == "K"
  end

  def is_ace
    @value == "A"
  end
end
