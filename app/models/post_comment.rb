class PostComment < ApplicationRecord
	belongs_to :user
	belongs_to :post_image

	validates :title, presence: true, length: { in: 2..50 }

end
