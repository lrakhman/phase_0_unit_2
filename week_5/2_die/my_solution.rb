# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

class Die
  def initialize(labels)
   @labels = labels
   if @labels.empty?
     raise ArgumentError.new("Empty array")
   end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
