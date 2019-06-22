class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :number, null:false
      t.references :user, foreignkey: true
      t.timestamps
    end
  end
end
