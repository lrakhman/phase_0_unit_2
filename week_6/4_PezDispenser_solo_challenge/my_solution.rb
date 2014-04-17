# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# 1. create PezDispenser class
# 2. initialize attribue flavors, and accept a splat argument
# 3. create count method that counts the length of the flavors array
# 4. create dispense method that deletes one flavor
# 5. create add_pez method that adds one flavor
# 6. create display method that lists all the pez flavors


# 3. Initial Solution

class PezDispenser

  attr_reader :flavors

  def initialize(*flavors)
 	@flavors = flavors
  end

  def pez_count
  	return "You have #{@flavors.length} pez!"
  end

  def dispense
  	return "The pez flavor you got is: #{@flavors.pop}."
  end

  def add_pez(flavor)
  	@flavors.unshift(flavor)
  	return "Adding a #{flavor} pez."
  end

  def display_pez
  	return "The flavors in your Pez Dispenser are: #{@flavors}.\nThe next flavor is: #{@flavors.pop}."
  end

end
 

# 4. Refactored Solution

# Again, I'm not really sure how to refactor something that is so simple. 
# I think the code is fine as is.



# 1. DRIVER TESTS GO BELOW THIS LINE
pez1 = PezDispenser.new("strawberry", "cherry", "banana", "raspberry", "chocolate", "vanilla", "blueberry", "grape")

def assert
  yield
end

p assert { pez1.pez_count == "You have 8 pez!" }
p assert { pez1.dispense == "The pez flavor you got is: grape." }
p assert { pez1.add_pez("lemon") == "Adding a lemon pez." }
p assert { pez1.flavors == ["lemon", "strawberry", "cherry", "banana", "raspberry", "chocolate", "vanilla", "blueberry"] }


# 5. Reflection 

# This challenge wasn't very difficult code-wise, but it was pretty ambiguous user-story-wise.
# For example, what does it mean that the user wants to be able to create a new pez dispenser?
# I wasn't sure if that meant the regular way (like doing PezDispenser.new) or it meanst that
# I should write a create method. Writing a create method seems like repetition, though, because
# it's just as easy to use the .new method. I know that in Rails (and I quote): "'create' instantiates 
# the new object, validates it, and then saves it to the database. And 'new' only creates the local 
# object but does not attempt to validate or save it to the DB." Therefore, in a real-world 
# scenario using the create method would have more benefits, but I'm not sure how to interpret it
# in this exercise. I'm probably just over-thinking it :).



