class AddSummaryToFeed < ActiveRecord::Migration[5.0]
  def change
        add_column :feeds, :summary, :text
  end
end
