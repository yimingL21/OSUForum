class User < ApplicationRecord
    has_many :comments
    has_many :posts
    serialize :post_ids, Array
    serialize :comment_ids, Array
    
    validates :name, presence: true, uniqueness: true, length: { maximum: 20 }
    validates :email, presence: true, format: { with: /[a-z]*\.[1-9]\d*@osu\.edu/ },
              uniqueness: true

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
