# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: credit card number
# Output: true or false
# Steps: 
# 1. create a CreditCard class
# 2. define 2 methods: initialize(one argument) and check_card (no arguments)
# 3. in initialize, set @card_number = card_number.to_s, then raise ArgumentError if card_number != 16
# 4. in check_card, make num = an array of numbers that are strings that have been created from the cc num, 
# then turn them into integers
# 5. make a new variable, array1 that equals num.reverse and grab all the even indices
# 6. make another variable, array2 that equal num.rever and grab all the odd indices
# 7. double each number in the odd array by using .map, then joining them all together, then
# dividing them out again by using .scan(/./)
# 8. turn all the strings of the doubled array into integers with .to_i
# 9. make new_array = add the even indices array to doubled array
# 10. sum up all the numbers in new_array
# 11. if the sum of the new_array % 10 == 0, return true, otherwise return false

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(card_number)
#     @card_number = card_number.to_s
#     unless @card_number.length == 16
#       raise ArgumentError.new("Credit card number must be 16 digits")
#     end
#   end

#   def check_card
#     num = @card_number.scan(/./).map {|x| x.to_i }
#     array1 = num.reverse.values_at(0, 2, 4, 6, 8, 10, 12, 14)
#     array2 = num.reverse.values_at(1, 3, 5, 7, 9, 11, 13, 15)
#     doubled_array = array2.map {|x| x * 2 }.join.scan(/./)
#     db_array_to_ints = doubled_array.map {|x| x.to_i}
#     new_array = db_array_to_ints + array1
#     validate = new_array.inject {|sum, x| sum + x}
#     if validate % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end

# 4. Refactored Solution

class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s
    raise ArgumentError.new("Number must be 16 digits") if @card_number.length != 16
  end


  def check_card
    num = @card_number.scan(/./).map(&:to_i)
    odd_array = num.reverse.select.each_with_index { |enum, i| i.odd? }
    even_array = num.reverse.select.each_with_index { |enum, i| i.even? }
    doubled_array = even_array.map {|x| x * 2 }.join.scan(/./)
    new_array = doubled_array.map(&:to_i) + odd_array
    validate = new_array.reduce(:+)
    validate % 10 == 0 ? true : false
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
cc = CreditCard.new(4408041234567893)
cc2 = CreditCard.new(4408041234567892)

p cc.check_card == true
p cc2.check_card == false





# 5. Reflection 
