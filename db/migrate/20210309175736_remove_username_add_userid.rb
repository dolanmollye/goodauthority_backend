class RemoveUsernameAddUserid < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :username, :string
    add_column :posts, :user_id, :integer
    add_column :posts, :image, :string
    add_column :posts, :restaurant, :boolean 
    add_column :posts, :caption, :string
    add_column :posts, :description, :string
  end
end
