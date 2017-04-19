# Virus Predictor

# I worked on this challenge [by myself, with: Chinmay ].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Allows access of another file (no need for path if in same folder)
# require is used for modules and needs a absolute path
require_relative 'state_data'

class VirusPredictor
# assign values of arguments to instance variables for all new instances
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#  calls two methods
  def virus_effects
    # predicted_deaths
     print "#{@state} will lose #{predicted_deaths} people in this outbreak"
    # speed_of_spread
     puts " and will spread across the state in #{speed_of_spread} months.\n\n"

  end

  private

#Based on pop desnity calculates number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when 200..Float::INFINITY
      (@population * 0.4).floor
    when 150...200
      (@population * 0.3).floor
    when 100...150
      (@population * 0.2).floor
    when 50...100
      (@population * 0.1).floor
    else
      (@population * 0.05).floor
    end
  end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  # end

# based on pop density calculates speed of spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    case @population_density
    when 200..Float::INFINITY then speed+=0.5
    when 150...200
      speed += 1
    when 100...150
      speed += 1.5
    when 50...100
      speed += 2
    else 
      speed += 2.5
     end
  end
end


    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    # puts " and will spread across the state in #{speed} months.\n\n"


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, population_info|
  state = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section