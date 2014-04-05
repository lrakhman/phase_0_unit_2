# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a #prints out the entire alphabet in an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #take the alphabet array, rotate by 4 places, then make subarrays of two letters each that match up by index, then convert it into a hash where the keys are the original alphabet and the values are the rotated alphabet 
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #defining an array of symbols
    
    original_sentence = sentence.downcase #making everything lowercase
    encoded_sentence = [] #intializing new array
    original_sentence.each_char do |element| #looping through each character in the string
      if cipher.include?(element) #checking if the cipher has any of the characters in the string
        encoded_sentence << cipher[element] #push element into the encoded sentence array
      elsif element == ' ' #else if there is a space instead of an element
        encoded_sentence << spaces.sample #take a random sample from the spaces array and push it into the encoded array
      else 
        encoded_sentence << element #otherwise catch anything else an push it into the array
      end
     end
    
    return encoded_sentence.join #join the encoded_sentence array into a string
end


# Questions:
# 1. What is the .to_a method doing?
# It converts the range of strings into an array of strings.
# 2. How does the rotate method work? What does it work on?
# The rotate method words on the array of strings. It rotates by index number to the right.
# 3. What is `each_char` doing? 
# It is iterating through a string by each character. 
# 4. What does `sample` do?
# It takes a random sample from an array (you can specify the number of samples you'd like).
# 5. Are there any other methods you want to understand better?
# The .zip method is still confusing to me. I understand what it does with equal sized arrays, 
# but I'm confused about the behavior with unequal sized arrays. 
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# This code actually looks very very similar to our refactored solution 
# (including the .zip, .rotate, and Hash). I'm not sure there's anything better or worse
# because it's so similar. 
# 7. Is this good code? What makes it good? What makes it bad?
# This code is ok, as far as I can tell. It would be hard to test because it gives you a different 
# result each time, but otherwise it works.
# I have difficulty judging code at this stage in my learning; 
# I can tell if something is blatantly bad, but the finer nuances escape me for now. 


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies") 
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")

# This does not return the same thing every time because we are taking a random sample
# from the spaces array, which means that the symbols will not be the same, but the letters will be.




# 5. Reflection 

# It was nice to go through each step of this excercise, 
# just like the last one. I learn best by example, so going 
# through new methods and not only looking them up but also 
# seeing them in action solidifies my learning way faster 
# than just memorization. The only frustrating thing I encountered
# was the .zip method. The documentation sucks, and I can't 
# figure out from the examples what is going on when the arrays
# are not equal lengths (especially the third example). 
# I tried researching it further online, but no success just yet :(.



