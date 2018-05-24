json.extract! menu_tem, :id, :name, :price, :restaurant_id, :created_at, :updated_at
json.url menu_tem_url(menu_tem, format: :json)
