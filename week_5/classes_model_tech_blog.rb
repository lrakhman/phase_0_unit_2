#Lokalizr


class User
  def initialize(name, age, state, city, email)
  	@name = name
  	@age = age
  	@state = state
  	@city = city
  	@email = email
  	@@users = 0
  end

attr_accessor :name, :age, :state, :city, :email

def self.delete #class method
  User.find(:id).destroy
end 

def register(username, password, id, email, city, state) #instance method
   if username.valid? && password.valid? && email.valid?
   	redirect_to "welcome_page"
   else
   	raise Error "Please check the fields and re-enter your information."
   end
   @@users += 1
end

  def login(username,password)
  	if User.find(:username, :password)
  		sign_in_and_redirect_to "home_page"
  	else
  		raise AuthenticationError "Please check your username and password."
  	end
  end
  
  def profile(gender, picture, survey, about_me)
  	#code that redirects to upload picture, fill out bio, and answer survey
  end


class Guide < User
  def initialize(rating)
	super (name, age, state, city, email)
	@rating = rating
	@@guides = 0
  end

  def give_rating(rate_guide)
	@rating += rate_guide
  end

  private

  def self.see_my_rating
	puts "Your rating is #{@rating}"
  end
end

class Tourist < User
  def initialize(rating)
      super (name, age, state, city, email)
      @rating = rating
	  @@tourists = 0
  end
	
  def give_rating(rate_tourist)
	  @rating += rate_tourist
  end

  private

  def self.see_my_rating
	puts "Your rating is #{@rating}"
  end

end

class New_Resident < User
  def initialize(rating)
    super (name, age, state, city, email)
    @rating = rating
	@@tourists = 0
  end
	
  def give_rating(rate_resident)
	@rating += rate_resident
  end

  private

  def self.see_my_rating
	puts "Your rating is #{@rating}"
  end
end










