class Players
  attr_accessor :name :lives

  def initialize(name)
    @name = name
    @lives = 3
    @turn = false
  end
end