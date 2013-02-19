class AddColumnToMyTable < ActiveRecord::Migration
  def change
  	self.up
  	  add_column :order, :customer_name, :string
  	  add_column :order, :customer_id, :integer


  end
end
