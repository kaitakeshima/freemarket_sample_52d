class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, null:false
      t.text :discription, null:false
      t.integer :condition, null:false
      t.integer :delivery_fee, null:false
      t.integer :delivery_method, null:false
      t.integer :delivary_days, null:false
      t.integer :price, null:false
      t.integer :category_id, null:false, foreign_key: true
      t.integer :user_id, null:false, foreign_key: true
      t.integer :buyer_number
      t.integer :prefecture, null:false
      t.timestamps
    end
  end
end
