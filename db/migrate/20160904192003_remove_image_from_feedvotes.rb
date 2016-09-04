class RemoveImageFromFeedvotes < ActiveRecord::Migration[5.0]
  def change
    remove_column :feed_votes, :image, :string
  end
end
