class Print
  def print_board(grid)
    grid.each do |_k, row|
      row.each { |e| print e }
      puts ''
    end
  end
end
