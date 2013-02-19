class AddColumnToMyTable < ActiveRecord::Migration
  def change
  	self.up
  	  add_column :Order, :customer_name, :string
  	  add_column :Order, :customer_id, :integer


  end
end
