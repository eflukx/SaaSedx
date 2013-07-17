class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
    _gamestring = ""
    raise WrongNumberOfPlayersError unless game.length == 2
    game.each{|itr|
      raise NoSuchStrategyError unless "RPSrps".chars.include?(itr[1]) #check game validity
      _gamestring += itr[1].upcase #build "gamestring"
    }
    
    # The rules are: R beats S; S beats P; and P beats R
    if _gamestring == "SR" || _gamestring == "PS" || _gamestring == "RP"
      return game[1]
    else
      return game[0]
    end
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
end

testgame = [ ["Armando", "P"], ["Dave", "p"] ]

result = rps_game_winner testgame
puts result.inspect

tournamenttest = [
                     [
                         [ ["Armando", "P"], ["Dave", "S"] ],
                         [ ["Richard", "R"],  ["Michael", "S"] ],
                     ],
                     [
                         [ ["Allen", "S"], ["Omer", "P"] ],
                         [ ["David E.", "R"], ["Richard X.", "P"] ]
                     ]
                 ]
                 
