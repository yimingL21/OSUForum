class User < ApplicationRecord
    has_many :comments
    has_many :posts
    serialize :post_ids, Array
    serialize :comment_ids, Array
end
