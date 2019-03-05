class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email, :posts, :likes
  has_many :posts
end
