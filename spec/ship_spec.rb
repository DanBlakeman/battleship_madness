require 'ship'

describe Ship do
  context 'on initialization' do
    it 'has size' do
      expect(subject.size).to eq 1
      ship2 = Ship.new(2)
      expect(ship2.size).to eq 2
    end

    it 'is not sunk' do
      expect(subject).not_to be_sunk
    end

    it 'has zero hits' do
      expect(subject.hits).to eq 0
    end
  end

  context 'on being attacked' do
    it 'number of hits increases when hit' do
      subject.hit
      expect(subject.hits).to eq 1
    end

    it 'is sunk when all sections hit' do
      subject.hit
      expect(subject).to be_sunk
    end
  end
end
