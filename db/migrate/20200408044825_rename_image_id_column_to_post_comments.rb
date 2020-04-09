class RenameImageIdColumnToPostComments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :post_comments, :image_id, :post_image_id
  end
end
