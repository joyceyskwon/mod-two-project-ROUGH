class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.string :category
      t.integer :price_range
      t.string :phone
      t.string :website

      t.timestamps
    end
  end
end
