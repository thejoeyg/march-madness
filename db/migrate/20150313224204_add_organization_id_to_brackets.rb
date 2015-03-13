class AddOrganizationIdToBrackets < ActiveRecord::Migration
  def change
    add_column :brackets, :organization_id, :integer
  end
end
