class Board

	attr_reader :cells, :rows, :columns, :diagonals

	def initialize
		@cells = (1..9).to_a
		@rows = {
			top: [@cells[0],@cells[1],@cells[2]],
			middle: [@cells[3],@cells[4],@cells[5]],
			bottom: [@cells[6],@cells[7],@cells[8]]
		}
		@columns = {
			left: [@cells[0],@cells[3],@cells[6]],
			center: [@cells[1],@cells[4],@cells[7]],
			right: [@cells[2],@cells[5],@cells[8]]
		}
		@diagonals = {
			down: [@cells[0],@cells[4],@cells[8]],
			up: [@cells[6],@cells[4],@cells[2]]
		}
	end

	def place_marker

	end

end