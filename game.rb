class Game

	def initialize
		@board = Board.new
		@player = nil
		@computer = nil
	end

	def start
		puts "Welcome to Tic-Tac-Toe. Prepare to be destroyed. :)"
		choose_marker
		starting_player = randomize_starting_player
		
	end

	def choose_marker
		puts "Which marker would you like to use: X or O?"
		choice = gets.chomp.upcase
		if choice == "X"
			@player = Player.new("X")
			@computer = Player.new("O")
		elsif choice == "O"
			@player = Player.new("O")
			@computer = Player.new("X")
		else
			puts "That is not a valid marker."
			choose_marker
		end
	end

	def randomize_starting_player
		[@player, @computer].sample
	end

end