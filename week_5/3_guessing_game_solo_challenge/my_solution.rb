# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

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



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
