class Droptable < ActiveRecord::Migration[5.1]
  def up
  	drop_table :guns
  end
end
