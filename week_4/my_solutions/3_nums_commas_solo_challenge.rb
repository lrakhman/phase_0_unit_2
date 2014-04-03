# U2.W4: Nums Commas Challenge


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: any number
# Output: that same number with commas separating every 3 digits from the right to the left
# Steps:


# 3. Initial Solution


def separate_comma(num)
  num_array = num.to_s.chars.reverse
  final_num = num_array.each_slice(3).map {|x| x.join }
  final_num.join(",").reverse
end



# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

