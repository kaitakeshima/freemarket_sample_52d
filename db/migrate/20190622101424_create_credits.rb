class CreateCredits < ActiveRecord::Migration[5.2]
  def change
    create_table :credits do |t|
      t.integer :card_number, :limit => 8 
      t.integer :expiration_month
      t.integer :expiration_year
      t.integer :securyty_code
      t.references :user, foreign_key: true 
      t.timestamps
    end
  end
end
