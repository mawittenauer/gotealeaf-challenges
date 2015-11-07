class Queens
  attr_accessor :white, :black
  
  def initialize(queens = {white: [0, 3], black: [7, 3]})
    @white = queens[:white]
    @black = queens[:black]
    raise ArgumentError if @black == @white
  end
  
  def board
    board = {}
    (0..7).each do |vertical_space|
      (0..7).each do |horizontal_space|
        if [vertical_space, horizontal_space] == black
          board[[vertical_space, horizontal_space]] = 'B'
        elsif [vertical_space, horizontal_space] == white
          board[[vertical_space, horizontal_space]] = 'W'
        else
          board[[vertical_space, horizontal_space]] = '_'
        end
      end
    end
    board
  end
  
  def to_s
    ["#{board[[0, 0]]} #{board[[0, 1]]} #{board[[0, 2]]} #{board[[0, 3]]} #{board[[0, 4]]} #{board[[0, 5]]} #{board[[0, 6]]} #{board[[0, 7]]}",
     "#{board[[1, 0]]} #{board[[1, 1]]} #{board[[1, 2]]} #{board[[1, 3]]} #{board[[1, 4]]} #{board[[1, 5]]} #{board[[1, 6]]} #{board[[1, 7]]}",
     "#{board[[2, 0]]} #{board[[2, 1]]} #{board[[2, 2]]} #{board[[2, 3]]} #{board[[2, 4]]} #{board[[2, 5]]} #{board[[2, 6]]} #{board[[2, 7]]}",
     "#{board[[3, 0]]} #{board[[3, 1]]} #{board[[3, 2]]} #{board[[3, 3]]} #{board[[3, 4]]} #{board[[3, 5]]} #{board[[3, 6]]} #{board[[3, 7]]}",
     "#{board[[4, 0]]} #{board[[4, 1]]} #{board[[4, 2]]} #{board[[4, 3]]} #{board[[4, 4]]} #{board[[4, 5]]} #{board[[4, 6]]} #{board[[4, 7]]}",
     "#{board[[5, 0]]} #{board[[5, 1]]} #{board[[5, 2]]} #{board[[5, 3]]} #{board[[5, 4]]} #{board[[5, 5]]} #{board[[5, 6]]} #{board[[5, 7]]}",
     "#{board[[6, 0]]} #{board[[6, 1]]} #{board[[6, 2]]} #{board[[6, 3]]} #{board[[6, 4]]} #{board[[6, 5]]} #{board[[6, 6]]} #{board[[6, 7]]}",
     "#{board[[7, 0]]} #{board[[7, 1]]} #{board[[7, 2]]} #{board[[7, 3]]} #{board[[7, 4]]} #{board[[7, 5]]} #{board[[7, 6]]} #{board[[7, 7]]}"].join("\n")
  end
  
  def attack?
    if (white[0] - white[1]) == (black[0] - black[1]) || (white[1] - white[0]) == (black[0] - black[1])
      true
    elsif white[0] == black[0] || white[1] == black[1]
      true
    end
  end
  
end
