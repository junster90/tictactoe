class Game

	def initialize
		@board = Board.new
		@human = nil
		@computer = nil
		@player1 = nil
		@player2 = nil
	end

	def start
		puts "Welcome to Tic-Tac-Toe. Prepare to be destroyed. :)"
		choose_marker
		randomize_starting_player
		puts "#{@player1.marker} starts first."
		play_game
	end

	def choose_marker
		puts "Which marker would you like to use: X or O?"
		choice = gets.chomp.upcase
		if choice == "X"
			@human = Player.new("X")
			@computer = AI.new("O")
		elsif choice == "O"
			@human = Player.new("O")
			@computer = AI.new("X")
		else
			puts "That is not a valid marker."
			choose_marker
		end
	end

	def randomize_starting_player
		players = [@human, @computer].shuffle
		@player1 = players.first
		@player2 = players.last
	end

	def print_board
		puts " --- --- --- "
		@board.rows.each do |row|
			row.each do |cell|
				print "| #{cell} "
			end
		
			print "| \n"
			puts " --- --- --- "
		end
	end

	def play_game
		until @board.gameover?
			take_turn(@player1)
			take_turn(@player2)
		end
		puts "Game over."
	end

	def take_turn(player)
		if player == @human
			puts "Your turn."
			take_turn_input

		elsif player == @computer
			puts "Computer's turn."
		end
	end

	def take_turn_input
		print_board
		puts "Where would you like to place your marker?"
		choice = gets.chomp.to_i
		if @board.is_valid_input?(choice)
			@board.place_marker(@human,choice)
		else
			puts "That is not a valid choice!"
			take_turn_input
		end
	end
end