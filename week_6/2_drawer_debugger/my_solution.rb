# U2.W6: Drawer Debugger


# I worked on this challenge by myself.


# 2. Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
	@contents = []
	@open = true
  end

  def open
	@open = true
  end

  def close
	@open = false
  end 

  def add_item(item)
	@contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing?
	@contents.delete(item)
  end

  def dump  # what should this method return?
	@contents.pop(@contents.length)
	puts "Your drawer is empty."
	return @contents
  end

  def view_contents
  	if @contents.length > 0
	  puts "The drawer contains:"
	  @contents.each {|silverware| puts "- " + silverware.type }
	else
	  return "Your drawer is empty."
	end
  end
end

class Silverware

  attr_reader :type

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
	@type = type
	@clean = clean
  end

  def eat
  	@clean = false
	puts "I'm eating with the #{type}"
  end

  def clean_silverware
  	@clean = true
  end

  def clean
  	@clean
  end
end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")

silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

fork = Silverware.new("fork")

silverware_drawer.add_item(fork)
silverware_drawer.view_contents

silverware_drawer.remove_item(fork) #add some puts statements to help you trace through the code...
silverware_drawer.view_contents
fork.eat
fork.clean_silverware

large_spoon = Silverware.new("large_spoon")
silverware_drawer.add_item(large_spoon)
silverware_drawer.view_contents

#BONUS SECTION
p fork.clean

# DRIVER TESTS GO BELOW THIS LINE

def assert
	yield
end

p assert { fork.clean == true }
p assert { fork.eat != "I'm eating with the fork" }
p assert { fork.eat == nil}
p assert { silverware_drawer.open == true }
p assert { silverware_drawer.close == false }

# # 5. Reflection 

# This was super confusing at first, and I'm not really sure why! I think I was just very 
# tired when I started this challenge. I added some methods and things, but then when
# I wanted to print out the contents it wouldn't add my "big-spoon". So I left it alone
# after struggling for a while (which I just learned to do, and is a great way for me to be
# more productive). Then I came back and realized that yes, it DID work, and that I was
# just writing it wrong. Good lord, the kinds of dumb mistakes that I make when I'm 
# staring at the same piece of code for too long is hilarous. Lastly, I'm not absolutely
# sure why fork.eat produces the value nil, but I'm looking into it now!
	