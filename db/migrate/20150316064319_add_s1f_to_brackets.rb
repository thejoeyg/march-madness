class AddS1fToBrackets < ActiveRecord::Migration
  def change
    add_column :brackets, :S1F, :string
  end
end
