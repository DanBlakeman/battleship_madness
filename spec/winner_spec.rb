require 'winner'

describe Winner do
  it 'detects when the game has been won' do
    ships = [double(:ship, sunk?: true), double(:ship, sunk?: true)]
    expect(subject.winner?(ships)).to be true
  end

  it 'detects when the game has not been won' do
    ships = [double(:ship, sunk?: false), double(:ship, sunk?: true)]
    expect(subject.winner?(ships)).to be false
  end
end
