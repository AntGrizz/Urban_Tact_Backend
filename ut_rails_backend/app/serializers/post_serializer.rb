class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :description, :image, :video, :link, :tags, :created_at, :updated_at, :likes, :user_id
end
