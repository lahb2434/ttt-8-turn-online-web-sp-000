# Display Board
def display_board(cell)
  puts " #{cell[0]} | #{cell[1]} | #{cell[2]} "
  puts "-----------"      
  puts " #{cell[3]} | #{cell[4]} | #{cell[5]} "
  puts "-----------"
  puts " #{cell[6]} | #{cell[7]} | #{cell[8]} "
end

# Valid Move
def valid_move?(board,index)
  if index.between?(0, 8) && ! position_taken?(board, index)
    true
  else
    false
  end
end  

# Position Taken
def position_taken?(board,index)
  if board[index].include?("X"||"O")
    true
  else board[index].include?(" "||""||nil)
    false
  end
end

# Input to index
def input_to_index(input)
  input.to_i - 1 
end

# Move
def move(board, cell, character = "X")
  board[cell] = character
end 

# Turn
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  input_to_index(user_input)
   if valid_move?(board, user_input) == true
     move(board, cell, character = "X")
  else
    turn(board)
  end
end
  


