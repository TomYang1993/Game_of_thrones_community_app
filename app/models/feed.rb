class Feed < ApplicationRecord
  has_many :feed_votes
  has_many :users, through: :feed_votes
  has_many :feed_categories
  has_many :categories, through: :feed_categories
end
