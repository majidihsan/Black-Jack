require_relative 'deck'

class Card
  attr_reader :suit, :rank, :face_card

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def face_card
      if ["J", "Q", "K"].include?(@rank)
        "its a face card"
      elsif @rank == 'A'
        "its a Ace"
      else
        "its not a face card"
    end
  end
end
