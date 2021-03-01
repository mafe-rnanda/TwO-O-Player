class Questions

  def initialize
    @num1 = rand(1..100)
    @num2 = rand(1..100)
    @sum = @num1 + @num2
  end

  def question(player)
    puts "#{player}: What does #{@num1} plus #{@num2} equal?"
  end

  def correct_answer?(answer)
    @sum == answer
  end

end
