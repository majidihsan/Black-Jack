require_relative 'deck'

class Hand
  attr_reader :cards, :calculate_hand, :add_card

  def initialize(cards)
    @cards = cards
  end

  def calculate_hand
    sum = 0
      @cards.each do |card|
        if ["J", "Q", "K"].include?(card.rank)
          sum += 10
        elsif card.rank == 'A' &&  sum <= 10
          sum += 11
        elsif card.rank == 'A'
          sum += 1
        else
          sum += card.rank.to_i
      end
    end
  sum
end

  def add_card(cards)
    @cards += cards
  end
end

deck = Deck.new
cards = deck.deal(2)
hand = Hand.new(cards)
