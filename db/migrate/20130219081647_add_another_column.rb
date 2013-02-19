class AddAnotherColumn < ActiveRecord::Migration
  def change
  	self.up
  	add_column :Orders, :item_id, :integer
  end
end
