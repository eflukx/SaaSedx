class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

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

def flat_game(game)
  rps_game_winner([game.flatten[0..1],game.flatten[2..3]]).flatten
end

def rps_tournament_winner(tournament)
  tnmt = tournament.flatten
  while tnmt.length >= 4 do
    tnmt.unshift flat_game(tnmt.pop(4))
    tnmt.flatten!
  end
  return tnmt
end

testgame = [ ["Armando", "P"], ["Dave", "p"] ]

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
                 

result = rps_game_winner testgame
puts result.inspect

rps_tournament_winner tournamenttest