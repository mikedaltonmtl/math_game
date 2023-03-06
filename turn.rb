class Turn
  attr_reader :number1, :number2, :player

  def initialize(player)
    @player = player
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def take_turn
    puts "#{player.long_name}: what does #{number1} plus #{number2} equal?"
    print "> "
    answer = $stdin.gets.chomp

    if answer.to_i == number1 + number2
      puts "#{player.long_name}: YES! You are correct."
    else
      puts "#{player.long_name}: Seriously? No!"
      player.lose_life
    end
  end
end