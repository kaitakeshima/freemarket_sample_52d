class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      # t.references :user, null: false, foreign_key: true
      t.string :name, null:false
      t.text :discription, null:false
      t.integer :condition, null:false
      t.integer :delivery_fee, null:false
      t.integer :delivery_method, null:false
      t.integer :delivery_days, null:false
      t.integer :price, null:false
      t.integer :size
      t.references :user, null: false, foreign_key: true
      t.string :brand 
      t.integer :buyer_number
      t.integer :prefecture, null:false
      t.string :image, null:false
      t.timestamps
    end
  end
end
