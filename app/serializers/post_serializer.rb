class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :image, :restaurant, :caption, :description
  has_one :user
end
