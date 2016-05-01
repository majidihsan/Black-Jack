require_relative "deck"
require_relative "hand"
require_relative "card"


class Blackjack
  attr_reader :player_hand, :dealer_hand, :add_card, :player_turn, :dealer_turn, :player_bust, :dealer_bust, :player_win, :dealer_win, :tie, :player_hit, :dealer_hit

  def initialize
    @player_hand = player_hand
    @dealer_hand = dealer_hand
    @deck = Deck.new
  end

  def deal_cards
    player_cards = @deck.deal(2)
    @player_hand = Hand.new(player_cards)
    puts "Player was dealt #{@player_hand.cards[0].rank} of #{@player_hand.cards[0].suit}'s'"
    puts "Player was dealt #{@player_hand.cards[1].rank} of #{@player_hand.cards[1].suit}'s'"
    puts "-" * 30
    puts "Player score: #{@player_hand.calculate_hand}"
  end

  def player_hit
    player_cards = @deck.deal(1)
    @player_hand.add_card(player_cards)
  end


  def dealer_hit
    dealer_cards = @deck.deal(1)
    @dealer_hand.add_card(dealer_cards)
  end


  def player_bust?
     @player_hand.calculate_hand > 21
  end

  def dealer_bust?
    @dealer_hand.calculate_hand > 21
  end



  def player_turn
      input = ""
      while input.downcase != "s"
        puts "Hit or stand (H/S):"
        input = gets.chomp

        if input == "H" && @player_hand.calculate_hand <= 21
          player_hit
          puts "Player was dealt #{@player_hand.cards[0].rank} of #{@player_hand.cards[0].suit}'s'"

        elsif player_bust?
          puts "Player Busted !"
          puts "Dealer wins"
          puts "-" * 30
          break
          puts "-" * 30
          puts "Player score: #{@player_hand.calculate_hand}"
        end
        if  input == "S" && @player_hand.calculate_hand < 21
          puts "Player score: #{@player_hand.calculate_hand}"
          puts "-" * 30
        end
      end
    end


    def dealer_turn
      dealer_cards = @deck.deal(2)
      @dealer_hand = Hand.new(dealer_cards)
      puts "Dealer was dealt #{@dealer_hand.cards[0].rank} of #{@dealer_hand.cards[0].suit}'s'"
      puts "Dealer was dealt #{@dealer_hand.cards[1].rank} of #{@dealer_hand.cards[1].suit}'s'"
      puts "-" * 30
        puts "dealer score: #{@dealer_hand.calculate_hand}"

      input = ""
      while input == "S" && @dealer_hand.calculate_hand < 21
        dealer_hit
        if dealer_bust?
          puts "Dealer Busted ! "
          puts "player wins"
          break
          puts "dealer score: #{@dealer_hand.calculate_hand}"
          end
        end




    def player_wins
       if @player_hand.calculate_hand < @dealer_hand.calculate_hand || player_bust? == true
        puts "dealer wins"

      elsif @player_hand.calculate_hand > @dealer_hand.calculate_hand || dealer_bust? == true
         puts "Player Wins"
      end
    end

    def tie
      if  @player_hand.calculate_hand == @dealer_hand.calculate_hand
          puts "Its a Tie"
      end
    end
  end
end



game = Blackjack.new
game.deal_cards
game.player_turn
game.dealer_turn
game.player_hit
game.dealer_hit
game.player_bust
game.dealer_bust
game.player_wins
game.tie
