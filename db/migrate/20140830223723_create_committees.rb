class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees do |t|
      t.integer  "year"
      t.string   "position",   :limit => 32, :default => ""
      t.string   "name",       :limit => 32, :default => ""
      t.timestamps
    end
  end
end
