class AddBuyerNumberToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :buyer_number, :integer
  end
end
