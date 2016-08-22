class Story < ApplicationRecord
  has_many :users, through: :user_stories
  has_many :user_stories
  has_many :story_likes
end
