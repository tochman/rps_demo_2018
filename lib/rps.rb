class RPS
  attr_accessor :players
  attr_reader :choices

  POSSIBLE_CHOICES = ['rock', 'paper', 'scissors']
  DEFAULT_PLAYER_NAMES = ['Player 1', 'Player 2']

  def initialize(args = {})
    @choices = POSSIBLE_CHOICES
    @players = args[:players] || DEFAULT_PLAYER_NAMES
  end


end
