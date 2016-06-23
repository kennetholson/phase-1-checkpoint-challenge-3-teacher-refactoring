require_relative 'instructor'

class ApprenticeTeacher < Instructor
  GOAL = 80
  ONE = '.'
  TWO = 'crazy'
  THREE = '.'

  def initialize(options={})
    super
    @target_raise = 800
  end

  include Attend_training_sessionable

end
