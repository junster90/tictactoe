class Game

	def initialize
		@board = Board.new
		@player = ""
		@computer = ""
	end

	def start
		puts "Welcome to Tic-Tac-Toe. Prepare to be destroyed. :)"
		choose_marker
	end

	def choose_marker
		puts "Which marker would you like to use: X or O?"
		choice = gets.chomp.upcase
		if choice == "X"
			@player = "X"
			@computer = "O"
		elsif choice == "O"
			@player = "O"
			@computer = "X"
		else
			puts "That is not a valid marker."
			choose_marker
		end
	end
end