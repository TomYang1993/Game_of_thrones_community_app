class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :motto
      t.string :backgroud_image
      t.string :family_tree_image
      t.text :history_description

      t.timestamps
    end
  end
end
