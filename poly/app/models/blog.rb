class Blog < ActiveRecord::Base

    validates :name, :description, presence: true

    has_many :posts
    has_many :users
    has_many :comments, as: :imageable
end
