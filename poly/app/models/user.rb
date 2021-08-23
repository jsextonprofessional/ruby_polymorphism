class User < ActiveRecord::Base

    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true

    has_many :messages
    has_many :posts
    has_many :owners
    has_many :blogs, through: :owners
    has_many :blogs, through: :posts
    has_many :comments, as: :imageable
end
