class AddAnotherColumn < ActiveRecord::Migration
  def change
  	self.up
  	add_column :Order, :item_id, :integer
  end
end
