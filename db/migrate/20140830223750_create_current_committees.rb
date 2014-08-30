class CreateCurrentCommittees < ActiveRecord::Migration
  def change
    create_table :current_committees do |t|
      t.string   "name"
      t.text     "description"
      t.string   "image"
      t.timestamps
    end
  end
end
