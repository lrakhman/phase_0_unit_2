# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself.


# Original Solution


class CreditCard

  def initialize (number)
    credit_card_len = number.to_s.length #confusing variable name, un-needed variable
    raise ArgumentError.new("Your Credit Card number it's incorrect.") if (credit_card_len > 16 || credit_card_len < 16) #shorter if statement would be more efficient
    @number = number
  end

  def check_card #this method is super long, and can be divided into multiple methods that only have one responsiblity (single responsibility principle from SOLID)

    number_arr = @number.to_s.split(//).map { |x| x.to_i }#can be it's own method

    step_1 = [] #no need to initialize a new array; why not work with the one from above? Also can be own method.
    i = number_arr.length - 1

    while i >= 0 #I've read that most experienced Ruby programmers do not use the while and for loops, but rather will mostly use iterators.
      if i % 2 == 0
        dbl_dgt = (number_arr[i] * 2)
        if dbl_dgt >= 10
          dbl_dgt = dbl_dgt.to_s.split(//).map { |x| x.to_i }
          step_1 << dbl_dgt.pop
          step_1 << dbl_dgt.pop
        else
          step_1 << dbl_dgt
        end
      else
        step_1 <<  number_arr[i]
      end
      i -= 1
    end

    sum = step_1.inject {|sum, x| sum += x}#should be it's own method

    if sum % 10 == 0 #should be it's own method
      return true
    else
      return false
    end

  end

end


# Refactored Solution

class CreditCard

  def initialize (number)
	@number = number.to_s # make this a string from the beginning for simplicity
    raise ArgumentError.new("Your Credit Card number is incorrect.") if @number.length != 16
  end

  def number_array # makes an integer array from the string
  	@number.split(//).map(&:to_i)
  end

  def double_dgts # doubles digits then returns an integer array
    cc_num = number_array 
  	cc_num.each_index { |i| cc_num[i] *= 2 if i.even? }.join.scan(/./).map(&:to_i)
  end

  def add_nums # sums up numbers
    double_dgts.inject(:+)
  end

  def check_card # checks card
    add_nums % 10 == 0 ? true : false
  end
end



# DRIVER TESTS GO BELOW THIS LINE

cc = CreditCard.new(4408041234567893)
cc2 = CreditCard.new(4408041234567892)


def assert
  yield 
end

p assert { cc.add_nums == 70 }
p assert { cc2.add_nums != 70 }
p assert { cc.double_dgts == [8, 4, 0, 8, 0, 4, 2, 2, 6, 4, 1, 0, 6, 1, 4, 8, 1, 8, 3] }
p assert { cc.check_card == true }
p assert { cc2.check_card == false }
p assert { CreditCard.new(11123) }


# Reflection 

# This challenge was useful, because translating other people's code is a good skill to master.
# I've been reading POODR, and trying to implement the SOLID principles that she discusses. 
# This was a great situation in which to attempt those principles. When I first wrote this code
# (for last week) mine looked very similar to the one method code above. It took me a while to 
# realize that it could be broken up into various methods that call each other in order to work. 
# This is better because it would be easier to fix one small method rather than go through a long, 
# complex method. The other thing I've been noticing is that most programmers just don't use loops! 
# That's weird to someone new at this, but understandable I guess, since it's easier to let your 
# objects handle their own traversal. There are so many Ruby iterators that it gets overwhelming 
# at times, but I know not to try to memorize them all (even though I secretly really want to).





