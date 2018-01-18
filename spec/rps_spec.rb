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
    expect(RPS::POSSIBLE_OPTIONS).to include subject.choice
  end




end
