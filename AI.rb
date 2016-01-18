class AI < Player
	def negamax(board,player1,player2,depth=0)
		if board.tie?
			return 0
		elsif board.gameover? #if current player sees gameover, opponent must have won.
			return -10
		end

		scores = []

		board.available_cells.each do |cell|
			if board.available_cells.length.even?
				board.place_marker(player2, cell)
			else
				board.place_marker(player1, cell)
			end
			#if next player lost, current player has won, take opposite side of their score.
			score = -negamax(board, player1, player2, depth + 1)
			scores << [cell, score]
			board.reset_cell(cell)
		end

		best_move = scores.max_by {|cell, score| score}[0]
		best_score = scores.max_by {|cell, score| score}[1]

		if depth > 0
			return best_score
		else
			return best_move
		end

	end
end