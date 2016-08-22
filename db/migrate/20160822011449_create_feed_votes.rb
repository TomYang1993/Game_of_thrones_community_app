class CreateFeedVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :feed_votes do |t|
      t.integer :user_id
      t.integer :feed_id
      t.string :image

      t.timestamps
    end
  end
end
