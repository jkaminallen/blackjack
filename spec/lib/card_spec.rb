require "spec_helper"

RSpec.describe Card do
  let(:card) { Card.new(5, '♦') }

  describe "#intialize" do
    it "initializes a new card based on the value and suit passed as arguments" do
      expect(card).to be_a(Card)
      expect(card.value).to eq(5)
      expect(card.suit).to eq('♦')
    end
  end

  describe "#is_face_card" do
    it "identifies a Jack, Queen, or King" do
      new_card = Card.new("J", '♦')
      expect(new_card).to be_a(Card)
      expect(new_card.value).to eq("J")
      expect(new_card.suit).to eq('♦')
    end
  end

  describe "#is_ace" do
    it "identifies the card as an ace" do
      ace_card = Card.new("A", '♦')
      expect(ace_card).to be_a(Card)
      expect(ace_card.value).to eq("A")
      expect(ace_card.suit).to eq('♦')
    end
  end
end
