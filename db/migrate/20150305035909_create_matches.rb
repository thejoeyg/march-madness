class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :winner
      t.string :team1
      t.string :team2
      t.timestamps
    end
  end
end
