class FeedCategory < ApplicationRecord
  belongs_to :category
  belongs_to :feed
end
