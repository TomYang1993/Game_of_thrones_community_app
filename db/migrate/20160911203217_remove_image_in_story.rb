class RemoveImageInStory < ActiveRecord::Migration[5.0]
  def change
    remove_column :story_likes, :image, :string
  end
end
