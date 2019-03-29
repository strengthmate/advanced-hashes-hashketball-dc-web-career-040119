require("pry")

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

#takes in an argument of a player's name and returns the number of points scored for that player.

def num_points_scored(name)
  game_hash.each do |team, data|
    data.each do |item, values|
      if item == :players
        values.each do |player, stats|
          if player == name
            return stats[:points]
          end
        end
      end
    end
  end
end











# #Returns an array populated with values populated from game_hash

# def teams
#   game_hash.values
# end



# #Returns a new hash containing contents of all payers from both teams

# def players
#   game_hash[:home][:players].merge(game_hash[:away][:players])
# end



# #.fetch() returns a value from the hash for the given key

# #Iterates over the teams returned in the teams method and eturns the team name that is equivilant to the team_name string given as the argument for find_the_team

# def find_the_team(team_name)
#   teams.find {|team| team.fetch(:team_name) == team_name}
#   #binding.pry
# end



# #Uses the new hash returned in the players method to return the value of the key that is equivalent to the argument that is passed into the find_the_player method

# def find_the_player(name)
#   players.fetch(name)
# end



# #num_points_scored takes in an argument of a player's name and returns the number of points scored for that player.

# def num_points_scored(name)
#   player = find_the_player(name)
#   player.fetch(:points)
# end



# #shoe_size takes in an argument of a player's name and returns the shoe size for that player.

# def shoe_size(name)
#   player = find_the_player(name)
#   player.fetch(:shoe)
# end



# #team_colors takes in an argument of the team name and returns an array of that teams colors.

# def team_colors(team_name)
#   team = find_the_team(team_name)
#   team.fetch(:colors)
# end



# #team_names operates on the game hash to return an array of the team names.

# def team_names
#   teams.map{|t| t.fetch(:team_name)}
# end


# #player_numbers, that takes in an argument of a team name and returns an array of the jersey number's for that team.
# def player_numbers(team_name)
#   find_the_team(team_name)[:players].map{ |player_name, stats| stats[:number] }
# end



# #player_stats, that takes in an argument of a player's name and returns a hash of that player's stats.
# def player_stats(player_name)
#   find_the_player(player_name)
# end



# #return the number of rebounds associated with the player that has the largest shoe size. 

# #.max_by returns the object in enum that gives the maximum value from the given block.

# def player_biggest_shoe_size
#   players.max_by{|player, stats| stats.fetch(:shoe)}[1] 
#   binding.pry
#   #Not sure what this [1] index is for?
# end

# #Returns the value of the rebounds key for the player returned in the biggest_shoe_size method

# def big_shoe_rebounds
#   player_biggest_shoe_size.fetch(:rebounds)
# end