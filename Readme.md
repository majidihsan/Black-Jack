## Black Jack

Blackjack is a card game between a player and the dealer using a deck of 52 cards. The object of the game is to reach a score as close to 21 as possible without exceeding it (bust). Both the dealer and the player are initially dealt two cards and have the option to receive another card (hit) or keep their current score (stand). The player can continually hit until they score 21 or bust. A dealer is required to stand when their score is between 17 and 21, inclusive.

## Sample Output

```no-highlight
$ ./blackjack.rb
Welcome to Blackjack!

Player was dealt 10♦
Player was dealt A♣
Player score: 21

Hit or stand (H/S): s

Player score: 21


Dealer was dealt Q♠
Dealer was dealt 8♥
Dealer score: 18

Dealer stands.

You win!
```

```no-highlight
$ ./blackjack.rb
Welcome to Blackjack!

Player was dealt 7♦
Player was dealt 5♥
Player score: 12

Hit or stand (H/S): h

Player was dealt 2♥
Player score: 14

Hit or stand (H/S): h

Player was dealt J♠
Player score: 24

Bust! You lose...
