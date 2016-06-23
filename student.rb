require_relative 'person'

class Student < Person

  def initialize(options = {})
    super
    @phase = 1
  end

  include Phaseable

  include Teachable

end
