class Page < ApplicationRecord
  has_many :comments, as: :commentable
  has_many :friends
  has_many :posts
  has_one :band
end
