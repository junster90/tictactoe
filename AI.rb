class AI < Player
	def minimax(board,player1,player2)
		board.available_cells.each do |cell|
			if board.available_cells.length.even?
				p player2
			else
				p player1
			end



		end
	end
end