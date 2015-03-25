require_relative './board'
require_relative './ship'
require_relative './pirnt'
require_relative './winner'

class Game
  attr_accessor :seafood, :gus, :print, :winner
  def initialize
    @seafood = Board.new
    @gus = Ship.new
    @print = Print.new
    @winner = Winner.new(@seafood.ships_on_board)
    do_stuff
  end
  def do_stuff
    seafood.place_ship((:A..:J).to_a.sample, rand(10), gus)
  end
  def next_turn
    print.print_board seafood.grid
    puts "Joe, what's your symbol?"
    sym = gets.chomp.to_sym
    puts "Joe, what's your number?"
    num = gets.chomp.to_i
    seafood.mark_cell(sym, num)
    if winner.winner?
      print.print_board seafood.grid
      puts "GAME OVER"
      exit 0
    end
    next_turn
  end

  def inspect
    'piss off, no internal state for you'
  end
end
