class AddAdminToBrackets < ActiveRecord::Migration
  def change
    add_column :brackets, :admin, :boolean
  end
end
