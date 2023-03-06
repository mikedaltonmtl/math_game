class Game
  attr_accessor :player1, :player2
  @@number_of_turns = 0

  def initialize
    @player1 = Player.new("P1", "Player 1")
    @player2 = Player.new("P2", "Player 2")
    play_game
  end

  def play_game
    while player1.lives > 0 && player2.lives > 0
      @@number_of_turns += 1
      current_player = @@number_of_turns.odd? ? player1 : player2
      turn = Turn.new(current_player)
      turn.take_turn
      puts "#{player1.short_name}: #{player1.lives}/3 vs #{player2.short_name}: #{player2.lives}/3"
      puts "----- NEW TURN -----" if current_player.lives > 0
    end

    winner = current_player.short_name == "P1" ? player2 : player1
    puts "#{winner.long_name} wins with a score of #{winner.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end