class CreateFeeds < ActiveRecord::Migration[5.0]
  def change
    create_table :feeds do |t|
      t.string :image
      t.string :content
      t.integer :vote_number

      t.timestamps
    end
  end
end
