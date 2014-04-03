# U2.W4: Nums Commas Challenge


# I worked on this challenge by myself.

# 2. Pseudocode

# Input: any number
# Output: that same number with commas separating every 3 digits from the right to the left
# Steps:
# 1. change number to string 
# 2. change string to array 
# 3. reverse the array because the slices will be taken from the beginning
# 4. slice the array every 3 spaces (by index)
# 5. iterate over the array with .map to join all the elements in the sub-arrays
# 6. join all the sub-arrays into one string with commas
# 7. reverse it back to what the number will look like


# 3. Initial Solution


def separate_comma(num)
  num_array = num.to_s.chars.reverse
  final_num = num_array.each_slice(3).map {|x| x.join }
  final_num.join(",").reverse
end



# 4. Refactored Solution

def separate_comma(num)
 num.to_s.chars.reverse.each_slice(3).map {|x| x.join }.join(",").reverse
end

# 5. Reflection 

# This was so much easier with regular expressions! But having said that, I'm really glad
# that I was forced to do this with just logic. I looked at a few other people's solutions,
# and I saw that some people used loops (like while, until) which was very clever. I recently
# discoved the .each_slice method, so I played around with that. When I was having issues with
# the .each_slice method I googled some things and found this: 

# number.to_s.chars.to_a.reverse.each_slice(3).map(&:join).join(",").reverse

# So many questions about this! First of all, why do .to_a AFTER the .chars which already
# returns an array? Second of all, what the HELL is .map(&:join)???? I know that sometimes
# the & makes a block into a proc/lambda (or something like that), but other than that, I don't
# know what's going on (which is why I wrote it out differently in my own code). The main
# benefit of looking this up was to solidify my understanding of .each vs. .map. I can now 
# explain, with confidence, the purpose of each method. The .each method will iterate through
# the array/hash and alter each element one at a time, but it will RETURN THE ORIGINAL ARRAY/HASH.
# Meaning, it will not return the result of what was altered. The .map method, on the other
# hand, builds a new array of the RESULTS FROM ITERATING OVER EACH ELEMENT. For example,
# if you have [1, 2, 3].each { |x| x + 1 } it will add 1 to each element and then throw those
# results away, only to return [1, 2, 3]. But if you do [1, 2, 3].map { |i| i + 1 } the return
# value is [2, 3, 4]. FUCK YES KNOWLEDGE. 



