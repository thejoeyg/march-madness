namespace :march_madness do
  desc 'add participating march maddness teams'

  task add_teams: :environment do
    [
      [1,'Kentucky','M'],
      [16, 'Hampton/Manhattan','M'],
      [8, 'Cincinnati','M'],
      [9, 'Purdue', 'M'],
      [5, 'West Virginia', 'M'],
      [12, 'Buffalo', 'M'],
      [4, 'Maryland', 'M'],
      [13, 'Valparaiso', 'M'],
      [6, 'Butler', 'M'],
      [11, 'Texas', 'M'],
      [3, 'Notre Dame'], 'M',
      [14, 'Northeastern', 'M'],
      [7, 'Wichita State', 'M'],
      [10, 'Indiana', 'M'],
      [2, 'Kansas', 'M'],
      [15, 'New Mexico State', 'M'],
      [1, 'Villanova', 'S'],
      [16, 'Lafayette', 'S'],
      [8, 'NC State', 'S'],
      [9, 'LSU', 'S'],
      [5, 'UNI', 'S'],
      [12, 'Wyoming', 'S'],
      [4, 'Louisville', 'S'],
      [13, 'UC Irvine', 'S'],
      [6, 'Providence', 'S'],
      [11, 'Boise State/Dayton', 'S'],
      [3, 'Oklahoma', 'S'],
      [14, 'Albany', 'S'],
      [7, 'Michigan State', 'S'],
      [10, 'Georgia', 'S'],
      [2, 'Virginia', 'S'],
      [15, 'Belmont', 'S'],
      [1, 'Wisconsin', 'E'],
      [16, 'Coastal Caro.', 'E'],
      [8, 'Oregon', 'E'],
      [9, 'Oklahoma State', 'E'],
      [5, 'Arkansas', 'E'],
      [12, 'Wofford', 'E'],
      [4, 'North Carolina', 'E'],
      [13, 'Harvard', 'E'],
      [6, 'Xavier', 'E'],
      [11, 'BYU/Mississippi', 'E'],
      [3, 'Baylor', 'E'],
      [14, 'Georgia State', 'E'],
      [7, 'VCU', 'E'],
      [10, 'Ohio State', 'E'],
      [2, 'Arizona', 'E'],
      [15, 'Texas Southern', 'E'],
      [1, 'Duke', 'W'],
      [16, 'UNF/RMU', 'W'],
      [8, 'San Diego', 'State', 'W'],
      [9, 'St. John\'s', 'W'],
      [5, 'Utah', 'W'],
      [12, 'Steph F. Austin', 'W'],
      [4, 'Georgetown', 'W'],
      [13, 'Eastern Washington', 'W'],
      [6, 'SMU', 'W'],
      [11, 'UCLA', 'W'],
      [3, 'Iowa State', 'W'],
      [14, 'UAB', 'W'],
      [7, 'Iowa', 'W'],
      [10, 'Davidson', 'W'],
      [2, 'Gonzaga', 'W'],
      [15, 'North Dakota St.', 'W']
    ].each do |team|
      Team.create(ranking: team[0], name: team[1], region: team[2])
    end
  end
end
