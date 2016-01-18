class Game

	def initialize
		@board = Board.new
		@player = nil
		@computer = nil
		@player1 = nil
		@player2 = nil
	end

	def start
		puts "Welcome to Tic-Tac-Toe. Prepare to be destroyed. :)"
		choose_marker
		randomize_starting_player
		print_board
	end

	def choose_marker
		puts "Which marker would you like to use: X or O?"
		choice = gets.chomp.upcase
		if choice == "X"
			@player = Player.new("X")
			@computer = AI.new("O")
		elsif choice == "O"
			@player = Player.new("O")
			@computer = AI.new("X")
		else
			puts "That is not a valid marker."
			choose_marker
		end
	end

	def randomize_starting_player
		players = [@player, @computer].shuffle
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
		until board.gameover?
			take_turn(@player1)
			take_turn(@player2)
		end
	end

end