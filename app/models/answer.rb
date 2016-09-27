class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :upvotes
  has_many :downvotes
end
