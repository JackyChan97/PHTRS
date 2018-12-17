class Comment < ApplicationRecord

belongs_to :post
default_scope -> { order('created_at DESC') }

end
