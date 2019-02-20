class CreateLegends < ActiveRecord::Migration[5.1]
  def change
    create_table :legends do |t|
      t.string :legend_name
      t.string :legend_desc
      t.string :legend_passive_name
      t.string :legend_passive_desc
      t.string :legend_ability_name
      t.string :legend_ability_desc
      t.string :legend_ult_name
      t.string :legend_ult_desc

      t.timestamps
    end
  end
end
