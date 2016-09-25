class House < ApplicationRecord
  has_many :users
  has_many :housepages
  has_many :house_badges
  has_many :house_bios
  has_many :house_images
  has_many :house_stories

end
