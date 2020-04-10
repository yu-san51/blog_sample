class PostImage < ApplicationRecord
	belongs_to :user
	has_many :post_comments, dependent: :destroy
	has_many :favorites, dependent: :destroy
	has_many :post_image_tag_relations, dependent: :destroy
	has_many :tags, through: :post_image_tag_relations, dependent: :destroy
	attachment :image
	validates :title, presence: true
	validates :caption, presence: true

	def favorited_by?(user)
		favorites.where(user_id: user.id).exists?
	end
end
