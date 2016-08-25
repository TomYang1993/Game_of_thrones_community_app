class UpdateFeedCategories < ActiveRecord::Migration[5.0]
  def change
    change_column :feed_categories, :feed_id, 'integer USING CAST(feed_id AS integer)'
    change_column :feed_categories, :category_id, 'integer USING CAST(category_id AS integer)'
  end
end
