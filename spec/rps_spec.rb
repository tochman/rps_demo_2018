require './lib/rps'

describe RPS do

  subject { RPS.new }

  it 'has 3 possible choices' do
    expect(subject.choices.size).to eq 3
  end

  it 'has "rock", "paper", "scissors" as choices' do
    expect(subject.choices).to eq ['rock', 'paper', 'scissors']
  end

  it { is_expected.to respond_to :players}

  it '#players returns an array' do
    expect(subject.players.class).to eq Array
  end

  it 'needs to have at least 2 players' do
    expect(subject.players.size).to be >= 2
  end

  it 'has default playrs stored on initialize' do
    expect(subject.players.first).to eq 'Player 1'
  end

  it 'accepts custom player names' do
    subject.players = ['Kalle', 'Anders']
    expect(subject.players.first).to eq 'Kalle'
  end

  it 'accepts custom player names on initialize' do
    new_game = RPS.new(players: ['Kalle', 'Anders'])
    expect(new_game.players.first).to eq 'Kalle'
  end

  it {is_expected.to respond_to :player_1}
  it {is_expected.to respond_to :player_2}

  it '#player_1 returns "Player 1"' do
    expect(subject.player_1).to eq 'Player 1'
  end

  it '#player_2 returns "Player 2"' do
    expect(subject.player_2).to eq 'Player 2'
  end

  it {is_expected.to respond_to :choice}

  it '#choice returns a valid option' do
    player = 'Thomas'
    choice = subject.choice(player)
    expect(RPS::POSSIBLE_OPTIONS).to include choice[:choice]
  end

  it '#choice returns object with info about player and option"' do
    player = subject.player_1
    choice = subject.choice(player)
    expect(choice[:player]).to eq 'Player 1'
  end

  describe 'the #outcome' do
    it {is_expected.to respond_to :outcome}

    it 'rock beats scissors - first scenario' do
      choice_1 = {player: 'Player 1', choice: 'rock'}
      choice_2 = {player: 'Player 2', choice: 'scissors'}
      expect(subject.outcome(choice_1, choice_2)).to eq 'Winner is Player 1!'
    end

    it 'rock beats scissors - second scenario' do
      choice_1 = {player: 'Player 1', choice: 'scissors'}
      choice_2 = {player: 'Player 2', choice: 'rock'}
      expect(subject.outcome(choice_1, choice_2)).to eq 'Winner is Player 2!'
    end

    it 'scissors beats paper - first scenario' do
      choice_1 = {player: 'Player 1', choice: 'scissors'}
      choice_2 = {player: 'Player 2', choice: 'paper'}
      expect(subject.outcome(choice_1, choice_2)).to eq 'Winner is Player 1!'
    end

    it 'scissors beats paper - second scenario' do
      choice_1 = {player: 'Player 1', choice: 'paper'}
      choice_2 = {player: 'Player 2', choice: 'scissors'}
      expect(subject.outcome(choice_1, choice_2)).to eq 'Winner is Player 2!'
    end

    it 'paper beats rock - first scenario' do
      choice_1 = {player: 'Player 1', choice: 'paper'}
      choice_2 = {player: 'Player 2', choice: 'rock'}
      expect(subject.outcome(choice_1, choice_2)).to eq 'Winner is Player 1!'
    end

    it 'paper beats rock - second scenario' do
      choice_1 = {player: 'Player 1', choice: 'rock'}
      choice_2 = {player: 'Player 2', choice: 'paper'}
      expect(subject.outcome(choice_1, choice_2)).to eq 'Winner is Player 2!'
    end

    it 'rock ties with rock ' do
      choice_1 = {player: 'Player 1', choice: 'rock'}
      choice_2 = {player: 'Player 2', choice: 'rock'}
      expect(subject.outcome(choice_1, choice_2)).to eq 'It\'s a tie!'
    end

    it 'scissors ties with scissors ' do
      choice_1 = {player: 'Player 1', choice: 'scissors'}
      choice_2 = {player: 'Player 2', choice: 'scissors'}
      expect(subject.outcome(choice_1, choice_2)).to eq 'It\'s a tie!'
    end

    it 'paper ties with paper ' do
      choice_1 = {player: 'Player 1', choice: 'paper'}
      choice_2 = {player: 'Player 2', choice: 'paper'}
      expect(subject.outcome(choice_1, choice_2)).to eq 'It\'s a tie!'
    end

  end


end
