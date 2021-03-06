# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: D. Kevin Kang

# def bakery_num(num_of_people, fav_food)
#   my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
#   food_qty = my_list[fav_food]
#   fav_qty = 0
#   second_fav_qty = 0
#   third_fav_qty = 0

  
#   raise ArgumentError.new("You can't make that food") unless my_list.include?(fav_food)
    
#     if num_of_people % food_qty  == 0 
#        num_of_food = num_of_people / food_qty 
#        return "You need to make #{num_of_food} #{fav_food}(s)."
    
#     else
#        while num_of_people > 0
        
#         max_value = my_list.keep_if {|k, v| k != fav_food}.values.max
#         min_value = my_list.keep_if {|k, v| k != fav_food}.values.min
         
#          if num_of_people / food_qty > 0 
#           fav_qty = num_of_people / food_qty
#           num_of_people = num_of_people % food_qty
          
#           elsif num_of_people / max_value > 0 
#           second_fav_qty = num_of_people / max_value
#           num_of_people = num_of_people % max_value
        
#           else 
#             third_fav_qty = num_of_people
#             num_of_people = 0
#           end
#         end
#       return "You need to make #{fav_qty} #{fav_food}(s), #{second_fav_qty} #{my_list.key(max_value)}(s), and #{third_fav_qty} #{my_list.key(min_value)}(s)."
#    end

# end

 
# Our Refactored Solution

def bakery_num(num_of_people, fav_food)

  my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  
  raise ArgumentError.new("You can't make that food") unless my_list.include?(fav_food)
  #when its even
  if num_of_people % my_list[fav_food] == 0
    num_of_even_food = num_of_people / my_list[fav_food]
    return "You need to make #{num_of_even_food} #{fav_food}(s)."
  end
 
  #when its not even and nasty 
  second_fav_food = my_list.key(my_list.select{|k,v| k != fav_food}.values.max)
  third_fav_food  = my_list.key(my_list.select{|k,v| k != fav_food}.values.min)
  
  fav_foods = [fav_food,second_fav_food,third_fav_food]
  
  hashy = fav_foods.inject({}) do |hashy,food|
    hashy[food] = num_of_people / my_list[food]
    num_of_people = num_of_people % my_list[food]
    hashy
  end
  
  #display
  return "You need to make #{hashy["pie"]} pie(s), #{hashy["cake"]} cake(s), and #{hashy["cookie"]} cookie(s)." 
    
end




#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!




#  Reflection 

# This was harder than I origninally thought it would be! I now see why people 
# get so frustrated with legacy code. I had a difficult time even wrapping my brain
# around what was going on because I didn't understand the logic at first. My parter
# was great though, and explained some things to me that I was confused about (and 
# our instructor was good as well at doing that). We worked on this for about 3 hours
# before calling it a day, and then we refactored individually and via email. This
# was a great experience in not being able to get a piece of code to run for a long
# time, then taking a break, then coming back to it and having an "aha!" moment. 
# Thank god for those :). 

