class CreateHousepages < ActiveRecord::Migration[5.0]
  def change
    create_table :housepages do |t|
      t.integer :house_id
      t.integer :character_id
      t.text :bio
      t.string :image
      t.string :banner
      t.string :name
      t.text :story

      t.timestamps
    end
  end
end
