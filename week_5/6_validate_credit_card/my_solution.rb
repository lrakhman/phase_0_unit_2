# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s
    unless @card_number.length == 16
      raise ArgumentError.new("Credit card number must be 16 digits")
    end
  end

  def check_card
    num = @card_number.scan(/./).map {|x| x.to_i }
    array1 = num.reverse.values_at(0, 2, 4, 6, 8, 10, 12, 14)
    array2 = num.reverse.values_at(1, 3, 5, 7, 9, 11, 13, 15)
    doubled_array = array2.map {|x| x * 2 }.join.scan(/./)
    db_array_to_ints = doubled_array.map {|x| x.to_i}
    new_array = db_array_to_ints + array1
    validate = new_array.inject {|sum, x| sum + x}
    if validate % 10 == 0
      return true
    else
      return false
    end
  end
end

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
    validate % 10 == 0? return true : return false
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
