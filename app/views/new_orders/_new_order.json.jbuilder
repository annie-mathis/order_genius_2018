json.extract! new_order, :id, :restaurant_id, :customer_id, :created_at, :updated_at
json.url new_order_url(new_order, format: :json)
