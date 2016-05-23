class CreateAgeTrackers < ActiveRecord::Migration
  def change
    create_table :age_trackers do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
