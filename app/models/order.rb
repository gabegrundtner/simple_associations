class Order < ActiveRecord::Base
  attr_accessible :item_name, :quantity, :total_cost, :customer_name, :customer_id, :item_id
  belongs_to :customer
  has_one :item

  before_validation :convert_customer_name_to_id

  validates :customer_id, :presence=> { :message=>"Customer name must be provided" }

  def convert_customer_name_to_id
    customer = Customer.find_by_name(self.customer_name)
    self.customer_id = customer.id unless customer.nil?
  end

 # def customer_name

 # end
end
