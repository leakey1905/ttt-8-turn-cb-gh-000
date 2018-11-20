# display the board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# move the things
def move(board, index, value = "X")
  board[index] = value
  return board
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

# its my turn
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if index.between?(0, 8)
    move(board, index)
  else
    turn(board)
  end
end
