class AddTitleToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :title, :text
  end
end
