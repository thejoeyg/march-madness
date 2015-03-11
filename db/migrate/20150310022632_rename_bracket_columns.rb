class RenameBracketColumns < ActiveRecord::Migration
  def change
    rename_column :brackets, :MS, :M5S
    rename_column :brackets, :WE, :W5E
    rename_column :brackets, :winner, :W6W
  end
end
