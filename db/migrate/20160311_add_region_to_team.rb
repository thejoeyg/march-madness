class AddRegionToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :region, :string
  end
end
