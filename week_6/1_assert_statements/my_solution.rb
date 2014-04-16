# U2.W6: Testing Assert Statements


# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
#   puts "hi"
# end
 
# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs:
# 1. set variable name equl to "bettysue"
# 2. call the assert method while passing it a block
# 3. if name equals "bettysue", nothing happens (it returns nil)
# 4. if name does not equal "bettysue", then the error is raised
# 5. this is done by first entering the method, then yielding to the block, then asking
# whether the block returns a true or false statement. If the block is true, then nil (it stops); 
# if the block returns false, then it goes back into the assert method and raises the error. 


# 3. Copy your selected challenge here

class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s
    raise ArgumentError.new("Number must be 16 digits") if @card_number.length != 16
  end

  def double_digits
    cc = @card_number.scan(/./).map(&:to_i)
    doubled_nums = cc.each_index { |i| cc[i] *= 2 if i.even? }.join.scan(/./).map(&:to_i)
  end

  def add_nums
    double_digits.reduce(:+)
  end

  def check_card
    add_nums % 10 == 0 ? true : false
  end
end



# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise ArgumentError.new("Credit card number must be 16 digits") unless yield
end

def assert
	raise "Not a credit card number" unless yield
end

credit1 = CreditCard.new(11111111111111112)
credit2 = CreditCard.new(4408041234567893)
credit3 = CreditCard.new(4408041234567892)
credit4 = CreditCard.new(234)

p assert { credit1.check_card }
p assert { credit2.check_card }
p assert { credit3.check_card }
p assert { credit4.check_card }


# 5. Reflection 

# Wow, this stuff is pretty cool. I've read about yield statements before, but now I understand
# them way better. However, there's a lot more going on here than meets the eye. From what
# I've read, this is called metaprogramming. When I try to research HOW and WHY yield acts
# in specific ways, I'm always also reading about closures, lambdas, and procs (which is super
# useful, but not exactly an answer). I watched a Berkeley course that used Ruby, and they explained
# yield pretty well (although I'd need way more practice to claim that I fully comprehend what's
# going on). 




