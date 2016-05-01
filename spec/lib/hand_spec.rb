require "spec_helper"

describe Hand do

  describe ".new" do
    cards = [Card.new("♥", "9")]
    let(:hand) { Hand.new(cards) }

    it "should be array of cards" do
      expect(hand.cards).to be_a Array
      expect(hand.cards.count).to eq 1
    end
  end
  #Hand to represent the player's and dealer's hand.
  #This class will need to determine the best score based on the cards that have been dealt.

  describe "#calculate_hand" do
    cards = [Card.new("♥", "9"), Card.new("♥", "5")]
    let(:hand) { Hand.new(cards) }
    it "passes the hand test" do
      expect(hand.calculate_hand).to eq(14)
    end
  end
end
