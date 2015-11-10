class Queens
  attr_accessor :white, :black
  
  def initialize(queens = {white: [0, 3], black: [7, 3]})
    @white = queens[:white]
    @black = queens[:black]
    raise ArgumentError if @black == @white
  end
  
  def board
    board = {}
    (0..7).each do |up|
      (0..7).each do |over|
        case [up, over]
          when black then board[[up, over]] = 'B'
          when white then board[[up, over]] = 'W' 
          else board[[up, over]] = '_'
        end
      end
    end
    board
  end
  
  def to_s
    board_string = ""
    board.each do |value, space|
      board_string << "#{space} " if value[1] != 7
      board_string << "#{space}" if value == [7,7]
      board_string << "#{space}\n" if value[1] == 7 && value[0] != 7
    end
    board_string
  end
  
  def attack?
    (white[0] - white[1]) == (black[0] - black[1]) || 
    (white[1] - white[0]) == (black[0] - black[1]) || 
    white[0] == black[0] || white[1] == black[1]
  end
  
end
