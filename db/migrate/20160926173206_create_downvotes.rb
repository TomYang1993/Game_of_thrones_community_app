class CreateDownvotes < ActiveRecord::Migration[5.0]
  def change
    create_table :downvotes do |t|
      t.integer :answer_id
      t.integer :user_id

      t.timestamps
    end
  end
end
