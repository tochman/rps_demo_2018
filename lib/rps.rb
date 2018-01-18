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

  def choice
    POSSIBLE_OPTIONS.sample
  end


end
