class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.integer :num_of_employees

      t.timestamps
    end
  end
end
