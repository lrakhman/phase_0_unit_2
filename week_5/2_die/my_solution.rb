# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: an array of strings
# Output: length of array, one random sample from array
# Steps: create Die class, initialize labels, raise ArgumentError if empty array, 
# define sides method, define roll method


# 3. Initial Solution

# class Die
#   def initialize(labels)
#    @labels = labels
#    if @labels.empty?
#      raise ArgumentError.new("Empty array")
#    end
#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     @labels.sample
#   end
# end



# 4. Refactored Solution


class Die
  def initialize(labels)
   @labels = labels
   raise ArgumentError.new("Empty array") if @labels.empty?
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end



# 1. DRIVER TESTS GO BELOW THIS LINE

d1 = Die.new(["Forward", "Backward", "Skip", "Jump 2", "Mystery Box"])

p d1.sides == 5
p d1.roll.is_a?(String) == true
p d1.sides.is_a?(Integer) == true
p ["Forward", "Backward", "Skip", "Jump 2", "Mystery Box"].include?(d1.roll) == true






# 5. Reflection 

# These driver tests were a bit easier to write, since I already
# struggled on the last challenge. I'm still unsure of how to test 
# that the ArgumentError is correctly called. Also, I learned about
# .sample from this exercise, which is very useful! 
