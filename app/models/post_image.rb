class PostImage < ApplicationRecord
	belongs_to :user
	attachment :image
	validates :title, presence: true
	validates :caption, presence: true
end
