class CreateHouseStories < ActiveRecord::Migration[5.0]
  def change
    create_table :house_stories do |t|
      t.integer :house_id
      t.text :content

      t.timestamps
    end
  end
end
