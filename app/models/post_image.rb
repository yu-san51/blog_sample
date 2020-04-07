class PostImage < ApplicationRecord
	belongs_to :user
	attachment :image, :user_image
end
