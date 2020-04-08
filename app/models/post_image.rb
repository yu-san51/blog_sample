class PostImage < ApplicationRecord
	belongs_to :user
	has_many :post_comments, dependent: :destroy
	attachment :image
	validates :title, presence: true
	validates :caption, presence: true
end
