class User < ApplicationRecord
  # your original association
    has_many :posts

    # the like associations
    has_many :likes
    has_many :liked_posts, :through => :likes, :source => :post
end
