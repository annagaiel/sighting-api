class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :track_number
      t.integer :total_homeless
      t.string :living_type
      t.string :city

      t.timestamps null: true
    end
  end
end
