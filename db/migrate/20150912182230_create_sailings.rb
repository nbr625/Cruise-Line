class CreateSailings < ActiveRecord::Migration
  def change
    create_table :sailings do |t|
      t.string :sailing_name
      t.integer :sailing_cruiseline_id
      t.string :sailing_main_image

      t.timestamps null: false
    end
  end
end
