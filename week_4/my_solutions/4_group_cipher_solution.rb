# U2.W4: Cipher Challenge


# I worked on this challenge with: Ahmed Al-Bahar.



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.

# def north_korean_cipher(coded_message) Defining your method that takes one argument
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs. Splitting your string into an array of individual characters
#   decoded_sentence = [] Initializing new array
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
            
#   input.each do |x| # What is #each doing here? Iterating through the array (that we gave it)
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? It is false initially because we are checking to see if they match, and if so, only then is it true. If the value is always true then there's no need to check the code. Also, if we set it to true the code on lines 60-62 will not run. 
#     cipher.each_key do |y| # What is #each_key doing here? Looping through each key of the cipher hash.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? It is comparing each key of the hash to each element of the array.
#         puts "I am comparing x and y. X is #{x} and Y is #{y}." Printing out each comparison. 
#         decoded_sentence << cipher[y] Pushing each match it finds into the empty decoded_sentence array.
#         found_match = true 
#         break  # Why is it breaking here? It is breaking so that it doesn't need to keep iterating over the entire hash again once it has found a match.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? Checking for all those characters, and if it finds one then replaces it with a space.
#         decoded_sentence << " " 
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? It prints out [0,1,2,3,4,5,6,7,8,9]
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
#     if not found_match  # What is this looking for? If no matches found, then put all other characters found into the decoded_message array.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") Putting the array back into a string 
 
#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. It's matching all numbers
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#   end  
#   return decoded_sentence # What is this returning?  This returns the new decoded sentence.      
# end


# Your Refactored Solution



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = [] 

  shiftbyfour = [*"a".."z"].rotate(4)
  alphabet = [*"a".."z"]
  cipher = Hash[shiftbyfour.zip(alphabet)]   
            
  input.each do |x| 
    found_match = false  
    cipher.each_key do |y| 
      if x == y  
        decoded_sentence << cipher[y] 
        found_match = true 
        break  
      elsif x =~ /[@#$%^&*]/  
        decoded_sentence << " " 
        found_match = true
        break
      elsif x =~ /[0-9]/ 
        decoded_sentence << x 
        found_match = true
        break
      end 
    end
     decoded_sentence << x if !found_match
  end
  decoded_sentence.join("").gsub!(/\d+/) { |num| num.to_i / 100 } 
  return decoded_sentence     
end



# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection

# This was a great challenge. I really went through each line of code to understand what was going on,
# and it helped me solidify my understanding of various methods. Specifically, I had to go 
# research what the break statement meant, because I understood it to some degree, but I didn't 
# understand it nearly as well as I originally thought. Also, .gsub was nice to play with, and 
# I explored making a hash out of two arrays with .zip. Overall this was quite the learning 
# experience. I know it's possible to take out the hash all together, but that would require a bit
# more time than I have at the moment. I'll definitely come back to this though. 
#  