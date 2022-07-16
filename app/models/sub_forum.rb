class SubForum < ApplicationRecord
    has_many :posts
    serialize :post_ids, Array
    serialize :admin_ids, Array
end
