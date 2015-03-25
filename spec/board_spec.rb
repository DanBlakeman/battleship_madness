require 'board'

describe Board do
  let(:ship) { double :ship }

  it 'has a grid' do
    board = Board.new { double :cell, mark: nil }
    expect { board.grid }.not_to raise_error
  end

  it 'has cells within grid' do
    board = Board.new { double :cell, mark: nil }
    expect(board.grid[:A][1]).to respond_to :mark
  end

  it 'can mark a cell' do
    board = Board.new { double :cell, mark: nil, hit: nil }
    expect(board.grid[:A][1]).to receive :hit
    board.mark_cell(:A, 1)
  end

  it 'places a ship in a cell' do
    board = Board.new { double :cell, mark: nil }
    expect(board.grid[:A][1]).to receive(:place)
    board.place_ship(:A, 1, :ship)
  end

  it 'returns a list of ships placed' do
    board = Board.new { double :cell, mark: nil, content: nil }
    ship = double :ship
    allow(board.grid[:A][1]).to receive(:content) { ship }
    expect(board.ships_on_board).to eq [ship]
  end
end
