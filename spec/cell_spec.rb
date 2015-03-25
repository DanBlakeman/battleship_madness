require 'cell'

describe Cell do
  it 'is empty when created' do
    expect(subject.content).to eq nil
  end

  it 'is not hit when created' do
    expect(subject).not_to be_hit
  end

  it 'can hold a ship' do
    subject.place(:ship)
    expect(subject.content).to eq :ship
  end

  it 'can be hit' do
    subject.hit
    expect(subject).to be_hit
  end

  it 'can hit the ship if there is one there' do
    ship = double :ship
    expect(ship).to receive(:hit)
    subject.place(ship)
    subject.hit
  end
end
