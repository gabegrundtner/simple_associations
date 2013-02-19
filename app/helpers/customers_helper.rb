module CustomersHelper
	def display_orders(customer)
		the_string = "<table class='table table-striped'><caption>The Orders</caption><thead><tr><th>Order ID</th><th>Quantity</th><th>Item Name</th><th>Total Cost</th><th>Customer Name</th><th>Customer ID</th><th>Item ID</th></tr></thead><tbody>"
		customer.order.each do |order|
			id = order.id
			q = order.quantity
			item_name = order.item_name
			tc = order.total_cost
			cn = order.customer_name
			ci = order.customer_id
			id = order.item_id
			the_string += "<tr><th>#{id}</th><th>#{q}</th><th>#{item_name}</th><th>#{tc}</th><th>#{cn}</th><th>#{ci}</th><th>#{id}</th></tr>"
		end
		the_string += "</tbody></table>"
		the_string.html_safe
	end
end
