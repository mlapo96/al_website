class CreateGuns < ActiveRecord::Migration[5.1]
  def change
    create_table :guns do |t|
      t.string :gun_name
      t.string :gun_type
      t.string :ammo_type
      t.string :gun_description
      t.integer :gun_body
      t.integer :gun_headshot
      t.integer :mag_size

      t.timestamps
    end
  end
end
