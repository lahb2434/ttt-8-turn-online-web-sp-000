# Display Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"      
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
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
  index = input_to_index(user_input)
   valid_move?(board, index) 
     
 
end

  


