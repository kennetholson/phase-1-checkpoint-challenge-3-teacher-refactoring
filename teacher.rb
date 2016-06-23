require_relative 'instructor'

class Teacher < Instructor
    GOAL = 90
    ONE = ', fo SHO!'
    TWO = 'flat-out insane'
    THREE = '. *saunters away*'
    attr_reader :performance_rating

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 1000
  end

end
