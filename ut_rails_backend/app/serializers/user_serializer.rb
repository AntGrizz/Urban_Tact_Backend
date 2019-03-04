class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :image, :email
  has_many :posts
end
