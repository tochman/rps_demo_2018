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



end
