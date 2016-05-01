require "spec_helper"

RSpec.describe Card do
  let(:card) { Card.new('♦', 7) }
  let(:card2) { Card.new('♥', 'J') }
  it " should have a value for suit and rank" do
    expect(card.suit).to eq('♦')
    expect(card.rank). to eq(7)
    expect(card2.suit).to eq('♥')
    expect(card2.rank).to eq('J')
  end

  describe '#face_card' do
    it "it should have a method to identify face card and Ace." do
      expect(card.face_card).to eq("its not a face card")
      expect(card2.face_card).to eq("its a face card")
      end
    end
  end
  # it should have a value for suit and rank
  # it should have a method to identify face card and Ace.
