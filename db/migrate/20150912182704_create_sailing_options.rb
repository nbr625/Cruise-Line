class CreateSailingOptions < ActiveRecord::Migration
  def change
    create_table :sailing_options do |t|
      t.integer :sailing_options_sailing_id
      t.integer :sailing_price
      t.string :sailing_date

      t.timestamps null: false
    end
  end
end
