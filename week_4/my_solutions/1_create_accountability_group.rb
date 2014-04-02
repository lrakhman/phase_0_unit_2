# U2.W4: 1_Create_Accountability_Group


# I worked on this challenge by myself.

# 2. Pseudocode

# must be groups of 4
# 4 groups of 4, one group of 5
# picks must be random

# Input: an array of 21 names (strings)
# Output: a list of groups (4 groups of 4 names, one group of 5 names)
# Steps: create the array of all the names in the cohort, shuffle them, take slices of four
# people at a time out, put the last person into a group, print out the list


# 3. Initial Solution

a_group = ["Ahmed Al-Bahar", "Alexander Glassman", "Brendan Brown", "Caleb Rugg", "Carl Krause", "Catherine Farkas", "Chase Miller",
 
"Daniel Yoachim", "Keenan Turner", "Kim Girard", "Lana Rakhman", "Michael E Daugherty", "Michael Pourhadi", "Natalie Frecka",

"Natalie McCroy", "Peter Debelak", "Richard Dsida", "Scott Silveus", "Travis Hernandez", "Tyler Keating", "Zac Mitton"]

 
def new_groups(group_array)

3.times do	
  new_groups = group_array.shuffle.each_slice(4).to_a
  new_groups[0] << new_groups.pop
  new_groups[0].flatten!
  new_groups.each {|i| puts "This accountability group is #{i.join(", ")}."}
  puts "*****"
 end
end

new_groups(a_group)
# 4. Refactored Solution









# 1. DRIVER TESTS GO BELOW THIS LINE

puts new_groups(a_group) === 







# 5. Reflection 





