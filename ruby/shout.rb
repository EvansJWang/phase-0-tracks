module Shout
  def yell_angrily(words)
    words + "!!!"
  end
  def yell_happily(words)
    "Yay for " + words
  end

end


class Teacher
  include Shout
end

class Drill_sergeant
  include Shout
end


require_relative 'shout'
ssg_wang = Drill_sergeant.new
ssg_wang.yell_angrily("Knock out 50 pushups")
ssg_wang.yell_happily("you!")





# module Shout
# end

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# end

# module Shout
#   def self.yell_happily(words)
#     "yeah buddy!!!!" + words + "All day!"
#   end
# end
