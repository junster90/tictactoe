class Board

	attr_reader :cells
	
	def initialize
		@cells = (1..9).to_a
	end

end