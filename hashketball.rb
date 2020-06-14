# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(name)
  home = game_hash[:home][:players]
  away = game_hash[:away][:players]

  home.each do |aoh|
    aoh.each do |key, value|
      if value.to_s == name.to_s
        return aoh[:points]
      end
  end
end

  away.each do |aoh|
    aoh.each do |key, value|
      if value.to_s == name.to_s
        return aoh[:points]
      end
    end
  end

end

def shoe_size(name)
  home = game_hash[:home][:players]
  away = game_hash[:away][:players]

  home.each do |aoh|
    aoh.each do |key, value|
      if value.to_s == name.to_s
        return aoh[:shoe]
      end
  end
end

  away.each do |aoh|
    aoh.each do |key, value|
      if value.to_s == name.to_s
        return aoh[:shoe]
      end
    end
  end
end

def team_colors(team_name)

  if team_name.to_s == game_hash[:home][:team_name]
    return game_hash[:home][:colors]
  end

  if team_name.to_s == game_hash[:away][:team_name]
    return game_hash[:away][:colors]
  end
end

def team_names
  array = [game_hash[:home][:team_name], game_hash[:away][:team_name]]
  return array
end

def player_numbers(team_name)
  home = game_hash[:home][:players]
  away = game_hash[:away][:players]
  array_of_numbers = []

  if team_name == game_hash[:home][:team_name]
    home.each do |aoh|
       array_of_numbers.push(aoh[:number])
    end
  end

  if team_name == game_hash[:away][:team_name]
    away.each do |aoh|
        array_of_numbers.push(aoh[:number])
    end
  end

  return array_of_numbers
end

def player_stats(name)
#takes in an argument of a player's name and returns
#a hash of that player's stats
home = game_hash[:home][:players]
away = game_hash[:away][:players]

home.each do |aoh|
  aoh.each do |key, value|
    if value.to_s == name.to_s
      return aoh
    end
end
end

away.each do |aoh|
  aoh.each do |key, value|
    if value.to_s == name.to_s
      return aoh
    end
  end
end
end

def big_shoe_rebounds
#return the number of rebounds associated with the player
#that has the largest shoe size. Break this one down into steps:
#   First, find the player with the largest shoe size
#   Then, return that player's number of rebounds
#   Remember to think about return values here.

home = game_hash[:home][:players]
away = game_hash[:away][:players]
shoe_size = -1
number_of_rebounds = 0
home.each do |aoh|
  if aoh[:shoe] > shoe_size
    shoe_size = aoh[:shoe]
    number_of_rebounds = aoh[:rebounds]
  end
end

away.each do |aoh|
  if aoh[:shoe] > shoe_size
    shoe_size = aoh[:shoe]
    number_of_rebounds = aoh[:rebounds]
  end
end
 return number_of_rebounds
end
