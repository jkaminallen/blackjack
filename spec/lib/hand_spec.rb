require "spec_helper"

RSpec.describe Hand do
    hand = Hand.new([Card.new("J", '♣'), Card.new('Q', '♣')])
    hand_2 = Hand.new([Card.new('A', '♦'), Card.new('A', '♦')])
    # hand_3 = Hand.new(Card.new('A', '♦'), Card.new('A', '♣'), Card.new('A', '♥'))
    # hand_4 = Hand.new(Card.new('8', '♦'), Card.new('10', '♦'))
    # hand_5 = Hand.new(Card.new('A', '♦'), Card.new('8', '♦'))
    # hand_6 = Hand.new(Card.new('8', '♦'), Card.new('10', '♦'), Card.new('A', '♦'))
    # hand_7 = Hand.new(Card.new('A', '♦'), Card.new('8', '♦'), Card.new('4', '♦'))
    # hand_8 = Hand.new(Card.new("J", '♣'), Card.new('Q', '♣'), Card.new('2', '♦'))

  describe "#calculate_hand" do

    it "should be twenty" do
      expect(hand.calculate_hand).to eq(20)
    end

    it "should be 21" do
      expect(hand_2.calculate_hand).to eq(12)
    end

    # it "should be 13" do
    #  expect(hand_3.calculate_hand).to eq(13)
    # end
    #
    # it "should be 18" do
    #   expect(hand_4.calculate_hand).to eq(18)
    # end
    #
    # it "should be 19" do
    #   expect(hand_5.calculate_hand).to eq(19)
    # end
    #
    # it "should be 19 again" do
    #   expect(hand_6.calculate_hand).to eq(19)
    # end
    #
    # it "should be 13 again" do
    #   expect(hand_7.calculate_hand).to eq(13)
    # end
    #
    # it "should be 22" do
    #   expect(hand_8.calculate_hand).to eq(22)
    # end
  end
end
