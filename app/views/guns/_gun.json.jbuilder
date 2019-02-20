json.extract! gun, :id, :gun_name, :gun_type, :ammo_type, :gun_description, :gun_body, :gun_headshot, :mag_size, :created_at, :updated_at
json.url gun_url(gun, format: :json)
