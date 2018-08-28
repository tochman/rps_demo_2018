# rps_demo_2018

## Usage

```ruby 
game = RPS.new

player1 = game.choice(game.players[0])
player2 = game.choice(game.players[1])

game.outcome(player1, player2)


# or

game.outcome(game.choice(game.players[1]), game.choice(game.players[0]))

```
