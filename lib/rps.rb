class RPS
  attr_accessor :players
  attr_reader :choices

  POSSIBLE_OPTIONS = ['rock', 'paper', 'scissors']
  DEFAULT_PLAYER_NAMES = ['Player 1', 'Player 2']

  def initialize(args = {})
    @choices = POSSIBLE_OPTIONS
    @players = args[:players] || DEFAULT_PLAYER_NAMES
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  def choice(player)
    { player: player, choice: POSSIBLE_OPTIONS.sample }
  end

  def outcome(player_one, player_two)
    if player_one[:choice] == 'rock' && player_two[:choice] == 'scissors'
      "Winner is #{player_one[:player]}!"
    elsif player_one[:choice] == 'scissors' && player_two[:choice] == 'rock'
      "Winner is #{player_two[:player]}!"
    elsif player_one[:choice] == 'scissors' && player_two[:choice] == 'paper'
      "Winner is #{player_one[:player]}!"
    elsif player_one[:choice] == 'paper' && player_two[:choice] == 'scissors'
      "Winner is #{player_two[:player]}!"
    elsif player_one[:choice] == 'paper' && player_two[:choice] == 'rock'
      "Winner is #{player_one[:player]}!"
    elsif player_one[:choice] == 'rock' && player_two[:choice] == 'paper'
      "Winner is #{player_two[:player]}!"
    elsif player_one[:choice] == player_two[:choice]
      "It's a tie!"
    end
  end


end
