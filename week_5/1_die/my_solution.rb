# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: One argument that is an integer.
# Output: number of sides and which side is rolled
# Steps: create a Die class, initialize sides, raise ArgumentError is sides < 1, define sides method
# define roll method


# 3. Initial Solution

# class Die
#   def initialize(sides)
#     @sides =  sides
#     unless @sides > 1
#       raise ArgumentError.new("Only numbers between 1 and 6 allowed")
#     end
#   end

#   def sides
#     @sides
#   end

#   def roll
#       return rand(1..@sides)
#   end
# end


# 4. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    raise ArgumentError.new("Number must be greater than 1") if @sides < 1
  end

 def sides
    @sides
  end

  def roll
      return rand(1..@sides)
  end
end


#not much new here, just collapsed the unless statement into an if statement




# 1. DRIVER TESTS GO BELOW THIS LINE

d1 = Die.new(6)


p d1.sides == 6
p d1.roll.is_a?(Integer) == true
p (d1.roll >= 1) == true
p (d1.roll <=6) == true






# 5. Reflection 

# I didn't have a hard time writing this code, 
# but I DID have a hard time writng the driver 
# tests. I don't know how to check that an ArgumentError 
# is called correctly, and I couldn't figure out why 
# .roll == (1 || 2 || 3 || 4 || 5 || 6) didn't work. 
# I finally figured out that the expression on the right
# will always only return the first true value it encounters,
# which in this case will always be the number 1. After I 
# caught that, I then divided up the expression to more
# accurately reflect what I was testing.
















