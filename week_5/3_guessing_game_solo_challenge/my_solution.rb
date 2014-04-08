# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: a number as a guess, a number as the answer
# Output: a symbol of either :high, :correct, or :low, and also  a true or false to the method solved?
# Steps: create a GuessingGame class, initialize the answer and add an instance variable of @check = false,
# define the method guess with an if statment, define method solved? by using @check.


# 3. Initial Solution

# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @check = false
#   end

#   def guess(my_guess)
#     if my_guess > @answer
#       @check = false
#       return :high
#     elsif my_guess == @answer
#       @check = true 
#       return :correct
#     else
#       @check = false
#       return :low
#     end
#   end

#   def solved?
#      @check
#   end
# end



# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @check = false
  end

  def guess(my_guess)
    if my_guess > @answer
      @check = false
      return :high
    elsif my_guess == @answer
      @check = true 
      return :correct
    else
      @check = false
      return :low
    end
  end

  def solved?
     @check
  end
end

# Honestly, I'm not really sure how to refactor this solution. The solved? method can't get any
# simpler, and using a case statement here doesn't quite make sense to me b/c it would be
# more lines of code. I could also add some sort of ArgumentError if the input in not a number
# (like if it's a string or symbol or something), but the rspec doesn't test for that, 
# so I didn't bother this time around. 


# 1. DRIVER TESTS GO BELOW THIS LINE

g1 = GuessingGame.new(8)

p g1.guess(5) == :low
p g1.solved? == false
p g1.guess(10) == :high
p g1.solved? == false
p g1.guess(8) == :correct
p g1.solved? == true
p g1.guess(4) == :low
p g1.solved? == false



# 5. Reflection 

# This was a fun little game to build. It took me a minute to figure out the @check = false
# condition, but once I remembered that I could initialize something to false and only change 
# it when it becomes true everything went pretty smoothly. As mentioned above, I considered
# refactoring with a case statement, but from what I understand case statements are great for
# multiple different conditions; this only has 3 outcomes, so I kept the if statemtent. 
