class ChangeBuyerNumberToItems < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :buyer_number, :integer 
  end
end
