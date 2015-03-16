class PopulateMatchesTable < ActiveRecord::Migration
  def change
    Match.create(winner: "M1A", team1: "M0A", team2: "M0B") #build text boxes using the ID, 

  end
end
