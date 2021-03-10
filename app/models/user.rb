class User < ApplicationRecord
has_secure_password
has_many :posts
# has_many :likes
# has_many :liked_posts, through: :likes, source: :post

validates_presence_of :email
    validates_uniqueness_of :email
    validates :password, :presence => true, :length => {:within => 6..40}
end
