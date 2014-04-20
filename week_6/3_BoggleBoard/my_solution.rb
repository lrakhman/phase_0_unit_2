# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
# 1. create a BoggleBoard class
# 2. initialize a board
# 3. make methods create_word, get_col, get_row, get_diagonal, and letter
# 4. letter should return one position on the board
# 5. get_row should return an entire get_row
# 6. get_col should return a column
# 7. create_word should make a word (turn array into string with .join)
# 8. get_diagonal should give the diagonal coordinates

# 3. Initial Solution
class BoggleBoard
 
  def initialize(board)
  	@board = board
  end
  
  def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("")
  end

  def get_row(n)
    @board[n].join("")
  end

  def get_col(n)
    @board.map {|i| i[n]}.join("")
  end
 
  def get_letter (x,y)
    @board[x][y]
  end

  def get_diagonal(coord)
   #code here
  end


end


 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

# 4. Refactored Solution

# Not sure how to refactor this one; the methods all have one responsibility and they are pretty concise.


# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

p boggle_board.get_letter(3,2) == "k"
p boggle_board.get_letter(1,3) == "t"
p boggle_board.get_letter(2,2) == "l"

# implement tests for each of the methods here:


p boggle_board.create_word([1,2], [1,1], [2,1], [3,2]) == "dock"
p boggle_board.get_row(0) == "brae"
p boggle_board.get_row(1) == "iodt"
p boggle_board.get_row(2) == "eclr"
p boggle_board.get_row(3) == "take"
p boggle_board.get_col(0) == "biet"
p boggle_board.get_col(1) == "roca"
p boggle_board.get_col(2) == "adlk"
p boggle_board.get_col(3) == "etre"
# p boggle_board.get_diagonal([0,0])
# p boggle_board.get_diagonal([0,1])
# p boggle_board.get_diagonal([1,0])

# 5. Reflection 

# This code was not difficult to change from last week. 
# The only challenge on this one was the get_diagonal method. 
# That took me forever, because I couldn't decide how to approach it. 
# I'm still working on it though, even though I didn't
# quite have enough time this week to come back to it. 
# I will solve you, dammnit :).