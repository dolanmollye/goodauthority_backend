class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :location, :bio, :name
  has_many :posts
  has_many :likes
end
