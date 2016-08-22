class CreateStoryLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :story_likes do |t|
      t.integer :user_id
      t.integer :story_id
      t.string :image

      t.timestamps
    end
  end
end
