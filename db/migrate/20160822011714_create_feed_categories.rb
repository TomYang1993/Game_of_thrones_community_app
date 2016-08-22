class CreateFeedCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :feed_categories do |t|
      t.string :feed_id
      t.string :category_id

      t.timestamps
    end
  end
end
