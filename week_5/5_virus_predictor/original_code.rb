# U2.W5: Virus Predictor

# I worked on this challenge by myself.

# This program is taking the STATE_DATA hash, which is made of keys and values (that are actually
# another hash), and using the info to calculate the effects that a virus has in each state.

# EXPLANATION OF require_relative
# When you use require to load a file, you are usually accessing functionality that has been properly installed, and made accessible, in your system. 
# require does not offer a good solution for loading files within the project’s code. This may be useful during a development phase, 
# for accessing test data, or even for accessing files that are "locked" away inside a project, not intended for outside use.
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population, region, regional_spread) #initialize instance variables
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  attr_reader :population

  def virus_effects  #HINT: What is the SCOPE of instance variables? The scope of instance variables in anywhere inside the class. This method is calling the private method.
    predicted_effects(@population_density, @population, @state)
  end

  private  #what is this?  what happens if it were cut and pasted above the virus_effects method. "Private" makes methods inaccessible from outside the class. 

  def predicted_effects(population_density, population, state) #This method is calculating the speed and number of deaths per state.

    if @population_density >= 200
      speed = 0.5
      percentage = 0.4
    elsif @population_density >= 150
      speed = 1
      percentage = 0.3
    elsif @population_density >= 100
      speed = 1.5
      percentage = 0.2
    elsif @population_density >= 50
      speed = 2
      percentage = 0.1
    else 
      speed = 2.5
      percentage = 0.05
    end 

    number_of_deaths = (@population * percentage).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months.\n\n"

  end

end

# #=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects

#Report for all 50 states:

STATE_DATA.map { |k,v| VirusPredictor.new(k,v[:population_density], v[:population], v[:region], v[:regional_spread]).virus_effects  }


#BONUS: Access the population by calling it on the instance.
# I added attr_reader :population to make this possible.

p alabama.population
p jersey.population
p california.population
p alaska.population



