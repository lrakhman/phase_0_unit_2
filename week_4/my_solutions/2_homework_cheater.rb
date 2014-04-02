# U2.W4: Title here


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# Output:
# Steps:


# 3. Initial Solution





def essay_writer(title, topic, date, thesis_statment, pronoun)
  return "#{title} \n\nIt is very important to learn about #{topic}. #{pronoun} was a key person in #{date}. #{pronoun} changed the course of history in many ways. #{thesis_statment} As you can see, #{topic} contribution is significant."
end

male = "He"
female = "She"

p essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", male) 

driver_test_code = essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", male) 

#=> My Award-Winning Essay (or maybe "D"-worthy)!
# The First Shogun

# Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. 
# His most important contribution to history is that he founded the Tokugawa period, a peaceful 
# time that lasted over 200 years. Tokugawa's contribution is important.





# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE



p driver_test_code == "The First Shogun \n\nIt is very important to learn about Tokugawa Ieyasu. He was a key person in 1603. He changed the course of history in many ways. His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years. As you can see, Tokugawa Ieyasu contribution is significant."



# 5. Reflection 

