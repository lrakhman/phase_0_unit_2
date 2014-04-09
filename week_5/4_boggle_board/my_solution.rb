# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# define a method create_word that accepts 2 arguments, one is the board, and the other
# is a splat argument for the coordinates. Iterate over the array with .map taking the 
# .first and .last of each 2 element array of coordinates, then join them into a string.

# Initial Solution
  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2])  #=> creates what california slang word? Rad

# Refactored Solution
# I don't think there IS a simpler solution than the one already written. I'm confused
# about this part 1; am I supposed to write different code than the method already written?

# DRIVER TESTS GO BELOW THIS LINE

p create_word(boggle_board, [2,1], [1,1], [1,2], [0,3]) == "code"
p create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad"
p create_word(boggle_board, [0,1], [1,1], [0,2], [1,2]) == "road"
p create_word(boggle_board, [2,1], [3,1], [3,2], [3,3]) == "cake"
p create_word(boggle_board, [1,2], [0,2], [1,3], [0,3]) == "date"

# Reflection 

# It was fun to try out the boggle board created for us. 
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define row_number method that accepts 2 arguments: a board, and a number. Then return
# the board[n]

# Initial Solution

def row_number(board, n)
  board[n]
end


# Refactored Solution
# This method is so simple that I don't really think there is an easier solution. However,
# one thing this method doesn't do is test for how many rows the board has, so if it gets
# a number that is out-of-bounds it returns nil. I could write a more complex method that checks
# how many rows there are before returning the result. Something like this:

def row_number(board, n)
  num_rows = board.length
  if (n >= 0) && (n <= num_rows - 1)
    return board[n] 
  else
  	return "That row does not exist on your board"
 end
end


# DRIVER TESTS GO BELOW THIS LINE
p row_number(boggle_board, 0) == ["b", "r", "a", "e"]
p row_number(boggle_board, 1) == ["i", "o", "d", "t"]
p row_number(boggle_board, 2) == ["e", "c", "l", "r"]
p row_number(boggle_board, 3) == ["t", "a", "k", "e"]
p row_number(boggle_board, 4) == "That row does not exist on your board"
             
          

# Reflection 

# This was pretty easy code to write. I had fun figuring out that an if/else statement
# does not like raising an ArgumentError without a rescue (I kept getting a warning). 
# I need to research that further, though. 

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# define a method column that accepts 2 arguments: a board and a number. Then use .map
# on the board to access the nth index in each array. 

# Initial Solution
# def column(board, n)
#   board[0][n] + board[1][n] + board[2][n] + board[3][n]
# end

# Refactored Solution
def column(board, n)
  board.map {|i| i[n]}
end

# DRIVER TESTS GO BELOW THIS LINE

p column(boggle_board, 0) == ["b", "i", "e", "t"]
p column(boggle_board, 1) == ["r", "o", "c", "a"]
p column(boggle_board, 2) == ["a", "d", "l", "k"]
p column(boggle_board, 3) == ["e", "t", "r", "e"]


# Reflection 

# This, again, was not too difficult to write. I wrote it out the longer, dumb way first, 
# and then quickly realized I could just iterate over it instead of hard-coding it into
# the method. These excercises seem pretty simple, so unless I'm missing something huge, 
# this challenge was finished fairly quickly. 






