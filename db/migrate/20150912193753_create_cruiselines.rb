class CreateCruiselines < ActiveRecord::Migration
  def change
    create_table :cruiselines do |t|
      t.string :cruise_line_name
      t.string :cruise_ship_name

      t.timestamps null: false
    end
  end
end
