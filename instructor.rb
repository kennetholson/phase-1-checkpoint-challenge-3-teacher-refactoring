require_relative 'person'

class Instructor < Person
  attr_reader :salary, :target_raise

  def initialize(options={})
    super
    @phase = 3
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    response = ""
    if rating > self.class::GOAL
      response = "Yay, I'm a great employee!"
      receive_raise(@target_raise)
    else
      response = "Oh, well -- thanks to this actionable, specific, and kind feedback, I'll do better next time."
    end
    response
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works#{self.class::ONE} "
    response += "*drops #{self.class::TWO} knowledge bomb* "
    response += "... You're welcome#{self.class::THREE}"
    response
  end

  module Attend_training_sessionable
    def attend_training_session
      puts "Whoa. I know ruby-fu"
    end
  end

end
