class AI < Player
	def minimax(board,player1,player2)
		board.available_cells.each do |cell|
			if board.available_cells.length.even?
				board.place_marker(player2, cell)
				board.reset_cell(cell)
			else
				board.place_marker(player1, cell)
				board.reset_cell(cell)
			end



		end
	end
end