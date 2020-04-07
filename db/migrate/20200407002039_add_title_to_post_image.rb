class AddTitleToPostImage < ActiveRecord::Migration[5.2]
  def change
    add_column :post_images, :title, :text
  end
end
