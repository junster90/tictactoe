class Board

	attr_reader :cells

	def initialize
		@cells = (1..9).to_a
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

	def full?
		@cells.all? {|i| i.is_a?(String) }
	end

	def tie?
		winner? == nil && full?
	end

	def gameover?
		winner? != nil || tie?
	end

	def winner?
		winner = nil
		rows.each do |row|
			if row.uniq.length == 1
				winner = row.first
			end
		end

		columns.each do |column|
			if column.uniq.length == 1
				winner = column.first
			end
		end

		diagonals.each do |diagonal|
			if diagonal.uniq.length == 1
				winner = diagonal.first
			end
		end

		return winner
	end

	def is_valid_input?(choice)
		available_cells.include?(choice)
	end

	def available_cells
		available_cells = []
		@cells.each do |cell|
			available_cells << cell if cell.is_a?(Integer)
		end
		return available_cells
	end

	def place_marker(player,cell)
		@cells[cell-1] = player.marker
	end

end