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

fireflies = ["Ahmed Al-Bahar", "Alexander Glassman", "Brendan Brown", "Caleb Rugg", "Carl Krause", "Catherine Farkas", "Chase Miller",
 
"Daniel Yoachim", "Keenan Turner", "Kim Girard", "Lana Rakhman", "Michael E Daugherty", "Michael Pourhadi", "Natalie Frecka",

"Natalie McCroy", "Peter Debelak", "Richard Dsida", "Scott Silveus", "Travis Hernandez", "Tyler Keating", "Zac Mitton"]

 
def new_groups(fireflies)

3.times do	
  new_groups = fireflies.shuffle.each_slice(4).to_a
  new_groups[0] << new_groups.pop
  new_groups[0].flatten!
  new_groups.each {|i| puts "This accountability group is #{i.join(", ")}."}
  puts "*****"
 end
 
  
end

new_groups(fireflies)
# 4. Refactored Solution

# I think my code is pretty concise. The only element I don't like is that it prints
# 3 groups every time I call the function, but I can't store each loop separately. I'm 
# not really sure how that would be done, or if that can be done. 







# 1. DRIVER TESTS GO BELOW THIS LINE
new_groups = fireflies.shuffle.each_slice(4).to_a

puts fireflies.shuffle != fireflies
puts fireflies.each_slice(4).to_a == [["Ahmed Al-Bahar", "Alexander Glassman", "Brendan Brown", "Caleb Rugg"], ["Carl Krause", "Catherine Farkas", "Chase Miller", "Daniel Yoachim"], ["Keenan Turner", "Kim Girard", "Lana Rakhman", "Michael E Daugherty"], ["Michael Pourhadi", "Natalie Frecka","Natalie McCroy", "Peter Debelak"], ["Richard Dsida", "Scott Silveus", "Travis Hernandez", "Tyler Keating"], ["Zac Mitton"]]
puts new_groups.length == 6
puts new_groups[0].length == 4
puts new_groups[1].length == 4
puts new_groups[2].length == 4
puts new_groups[3].length == 4
puts new_groups[4].length == 4 
puts new_groups[5].length == 1



# 5. Reflection 

# I learned about the .each_slice method for this exercise, and also used .flatten! for the 
# first time. I went back and forth between what was expected of me, because the instructions
# were unclear. I ended up making a method that immediately outputs 3 sets of groups, but
# I'm not really sure if that was the point of the exercise. I think I'm the kind of person
# that needs more detailed instructions :(. 


