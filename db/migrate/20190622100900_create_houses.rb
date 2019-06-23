class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.integer :postalcode
      t.integer :prefecture
      t.string :city
      t.string :address
      t.string :building
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
