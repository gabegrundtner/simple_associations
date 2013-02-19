class AddColumnToMyTable < ActiveRecord::Migration
  def change
  	self.up
  	  add_column :Orders, :customer_name, :string
  	  add_column :Orders, :customer_id, :integer


  end
end
