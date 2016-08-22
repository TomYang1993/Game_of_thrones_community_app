class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_stories
  has_many :stories, through: :user_stories
  has_many :feed_votes
  has_many :feeds, through: :feed_votes
  has_many :answers
  has_many :story_likes
  belongs_to :house
end
