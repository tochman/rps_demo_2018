class RPS
  attr_reader :choices

  POSSIBLE_CHOICES = ['rock', 'paper', 'scissors']

  def initialize
    @choices = POSSIBLE_CHOICES
  end

end
