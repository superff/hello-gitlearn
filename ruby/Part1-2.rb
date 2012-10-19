class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end


def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  # your code here
  return compare_player(game[0],game[1])
end 

def compare_player(player1,player2)
	p1,p2 = player1[1].upcase,player2[1].upcase
  	if p1 == p2
  		return player1
  	end
	if compare_two_player(p1,p2)
  		return player1
  	else
  		return player2
  	end
end

def compare_two_player(a,b)
	hash = {'P' => 'R', 'S' => 'P','R' =>'S'}
	if hash.has_key?(a) and hash.has_key?(b) 
		if b == hash[a]
			return true
		else
			return false
		end
	else
		raise NoSuchStrategyError 
	end
end

def rps_tournament_winner(games)
	if games[0].is_a? String 
		return games
	else
		player1 = rps_tournament_winner(games[0])
		player2 = rps_tournament_winner(games[1])
		return compare_player(player1,player2)
	end
end

puts rps_game_winner([[ "Armando", "P" ], [ "Dave", "P" ]])

puts rps_tournament_winner([
 [
   [ ["Armando", "P"], ["Dave", "S"] ],
   [ ["Richard", "R"],  ["Michael", "S"] ],
 ],
 [ 
   [ ["Allen", "S"], ["Omer", "P"] ],
   [ ["David E.", "R"], ["Richard X.", "P"] ]
 ]
])

