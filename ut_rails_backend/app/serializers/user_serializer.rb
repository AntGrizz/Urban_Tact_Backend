class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :posts, :likes
end
