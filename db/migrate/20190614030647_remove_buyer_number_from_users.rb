class RemoveBuyerNumberFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :buyer_number, :integer
  end
end
