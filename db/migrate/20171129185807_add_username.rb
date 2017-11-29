class AddUsername < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :username, :string
    add_column :photos, :user_id, :integer
    add_column :photos, :tag_id, :integer
    add_column :comments, :user_id, :integer
    add_column :comments, :photo_id, :integer
    add_column :tags, :photo_id, :integer
  end
end
