class CreateHouseBadges < ActiveRecord::Migration[5.0]
  def change
    create_table :house_badges do |t|
      t.integer :house_id
      t.string :image

      t.timestamps
    end
  end
end
