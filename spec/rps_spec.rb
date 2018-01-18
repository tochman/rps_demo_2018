require './lib/rps'

describe RPS do

  subject { RPS.new }

  it 'has 3 possible choices' do
    expect(subject.choices.size).to eq 3
  end

  it 'has "rock", "paper", "scissors" as choices' do
    expect(subject.choices).to eq ['rock', 'paper', 'scissors']
  end


end
