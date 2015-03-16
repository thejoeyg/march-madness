class CreateNewBrackets < ActiveRecord::Migration
  def change
    create_table :brackets, force: :cascade do |t|
      127.times do |i|
        t.string i.to_s
      end
      t.integer  "user_id"
      t.integer  "organization_id"
      t.timestamps
    end
  end
end
