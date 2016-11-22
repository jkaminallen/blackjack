require_relative 'card'

class Deck
  attr_accessor :cards

  SUITS = ['♦', '♣', '♠', '♥']
  VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'J', 'Q', 'K', 'A']

  def initialize
    @cards = build_deck
  end

  def build_deck
    cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        cards << Card.new(value, suit)
      end
    end
    cards.shuffle!
  end

  def deal(number_of_cards)
    cards.pop(number_of_cards)
  end
end
