class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.float :latitube
      t.float :longitude
      t.integer :num_of_employees

      t.timestamps
    end
  end
end
