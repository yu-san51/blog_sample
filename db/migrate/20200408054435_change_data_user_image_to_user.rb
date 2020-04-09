class ChangeDataUserImageToUser < ActiveRecord::Migration[5.2]
  def change
  	change_column :users, :user_image, :integer
  end
end
