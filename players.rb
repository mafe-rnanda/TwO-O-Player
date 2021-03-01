class Players
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def wrong_answer
    @lives -= 1
  end

  def still_playing?
    @lives != 0
  end

  def no_lives?
    @lives == 0
  end

end