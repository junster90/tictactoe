class Board

	attr_reader :cells

	def initialize
		@cells = (1..9).to_a
	end

	def winner?

	end

	def rows
		[
			[@cells[0],@cells[1],@cells[2]],
			[@cells[3],@cells[4],@cells[5]],
			[@cells[6],@cells[7],@cells[8]]
		]
	end

	def columns
		[
			[@cells[0],@cells[3],@cells[6]],
			[@cells[1],@cells[4],@cells[7]],
			[@cells[2],@cells[5],@cells[8]]
		]
	end

	def diagonals
		[
			[@cells[0],@cells[4],@cells[8]],
			[@cells[6],@cells[4],@cells[2]]
		]
	end

	def gameover?

	end

	def place_marker

	end

end