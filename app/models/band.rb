class Band < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :friends
  has_many :posts
  has_many :shows
end
