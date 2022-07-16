class Post < ApplicationRecord
    belongs_to :user
    belongs_to :sub_forum
    has_many :comments
    serialize :comment_ids, Array
end
