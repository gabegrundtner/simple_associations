class AddAnotherColumn < ActiveRecord::Migration
  def change
  	self.up
  	add_column :order, :item_id, :integer
  end
end
