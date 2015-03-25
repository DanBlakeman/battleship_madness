require 'board'

describe Board do
  let(:ship) { double :ship }

  it 'has a grid' do
    board = Board.new
    expect { board.grid }.not_to raise_error
  end

  it 'can mark an empty element' do
    board = Board.new
    board.mark_cell(:A, 1)
    expect(board.grid[:A][1]).to eq 'missed!'
  end

  it 'can mark a ship' do
    board = Board.new
    board.place_ship(:A, 1, double(:ship))
    expect(board.grid[:A][1]).to receive :hit
    board.mark_cell(:A, 1)
    expect(board.grid[:A][1]).to eq 'hit!'
  end

  it 'places a ship on grid' do
    board = Board.new
    board.place_ship(:A, 1, :ship)
    expect(board.grid[:A][1]).to eq :ship
  end

  it 'returns a list of ships placed' do
    board = Board.new
    ship = double :ship
    board.place_ship(:A, 1, ship)
    expect(board.ships_on_board).to eq [ship]
  end
end
