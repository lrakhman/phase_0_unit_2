# U2.W4: Title here


# I worked on this challenge with: Natalie Frecka.

# 2. Pseudocode

# Input: Give specific info to fill in a template. 
# Output: A template (string) with the filled in information.
# Steps: 1. create a class 2. initialize the arguments 3. write essay_driver method 4. create objects of that class 5. call the method on them


# 3. Initial Solution





# def essay_writer(title, topic, date, thesis_statment, pronoun)
#   return "#{title} \n\nIt is very important to learn about #{topic}. #{pronoun} was a key person in #{date}. #{pronoun} changed the course of history in many ways. #{thesis_statment} As you can see, #{topic} contribution is significant."
# end

# male = "He"
# female = "She"

# p essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", male) 

# driver_test_code = essay_writer("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", male) 

#=> My Award-Winning Essay (or maybe "D"-worthy)!
# The First Shogun

# Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. 
# His most important contribution to history is that he founded the Tokugawa period, a peaceful 
# time that lasted over 200 years. Tokugawa's contribution is important.





# 4. Refactored Solution

class Essay
  def initialize(title, topic, date, thesis_statment, pronoun)
  	@title = title
  	@topic = topic
  	@date = date
  	@thesis_statment = thesis_statment
  	@pronoun = pronoun
  end

  attr_accessor :title, :topic, :date, :thesis_statment, :pronoun

  def essay_writer
  	puts "#{@title}\n\nIt is very important to learn about #{@topic}. #{@pronoun} was a key person in #{@date}. #{@pronoun} changed the course of history in many ways. #{@thesis_statment} As you can see, this contribution is significant."
  end
end

new_essay1 = Essay.new("The First Shogun", "Tokugawa Ieyasu", 1603, "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years.", "He") 
new_essay1.essay_writer

new_essay2 = Essay.new("The First Programmer", "Ada Lovelace", 1842, "She was an English mathematician and writer chiefly known for her work on Charles Babbage's early mechanical general-purpose computer, the Analytical Engine. Her notes on the engine include what is recognised as the first algorithm intended to be carried out by a machine. Because of this, she is often described as the world's first computer programmer.", "She")
new_essay2.essay_writer

new_essay3 = Essay.new("Creator of Linux and Git", "Linus Benedict Torvalds", 1991, "He is a software engineer, who was the principal force behind the development of the Linux kernel. He later became the chief architect of the Linux kernel, and now acts as the project's coordinator. He also created the revision control system Git as well as the diving log software Subsurface.", "He")
new_essay3.essay_writer



# 1. DRIVER TESTS GO BELOW THIS LINE


p new_essay1.title == "The First Shogun"
p new_essay1.topic == "Tokugawa Ieyasu"
p new_essay1.date == 1603
p new_essay1.thesis_statment == "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years."
p new_essay1.pronoun == "He"
p new_essay2.title == "The First Programmer"
p new_essay2.topic == "Ada Lovelace"
p new_essay2.date == 1842
p new_essay2.thesis_statment == "She was an English mathematician and writer chiefly known for her work on Charles Babbage's early mechanical general-purpose computer, the Analytical Engine. Her notes on the engine include what is recognised as the first algorithm intended to be carried out by a machine. Because of this, she is often described as the world's first computer programmer."
p new_essay2.pronoun == "She"

# 5. Reflection 

# Natalie and I very much disliked this challenge. When something is too open-ended, I get more
# confused, not less confused. We weren't quite sure if the challenge was supposed to be this easy,
# or if we were mis-reading it, or exactly what the driver tests should look like. I, in particular,
# like real-world examples. I don't see how this kind of template relates to real-world examples,
# which could just be an oversight. I'd much rather write something that accepts a user with name,
# age, other attributes, and then returns something useful (like a welcome message after the user
# has signed in). I'm not very motivated to spend time on super simple things like creating classes
# and class objects because there is so much more that I don't know. Also, because I learn best by
# example, non-real world examples don't really help me much, and so I get frustrated. However, I do
# fully realize that maybe I completely missed the point of this challenge and that we were supposed
# to create a very complicated bit of code; either way, the instructions should have been clearer. 
