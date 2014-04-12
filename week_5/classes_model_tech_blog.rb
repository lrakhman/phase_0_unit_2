#Lokalizr


class User
  def initialize(name, age, state, city, email)
  	@name = name
  	@age = age
  	@state = state
  	@city = city
  	@email = email
  end
end

class Profile < User
  def initialize(gender, picture, survey, about_me)
  end
end

class Guide < Profile
	@@guides = 0
end

class Tourist < Profile
	@@tourists = 0
end

class New_Resident < Profile
	@@new_residents = 0

class Login
  def initialize(username, password, id)
  	@password = password
  	@username = username
  	@id = id
  end
end

class Register
  def initialize(username, password, id, email, city, state)
  end
end

class RatingsAndReviews
  def initialzie(score, write_up)
  end)

end









