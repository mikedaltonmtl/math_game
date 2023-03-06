class Player
  attr_accessor :lives
  attr_reader :short_name, :long_name

  def initialize(short_name, long_name)
    @short_name = short_name
    @long_name = long_name
    @lives = 3
  end

  def lose_life
    # use self for setter methods, tells Ruby we're not creating a new variable
    self.lives -= 1
  end
end