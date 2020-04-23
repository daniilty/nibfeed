class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.references :admin, null: false, foreign_key: true
      t.string :picture

      t.timestamps
    end
  end
end
