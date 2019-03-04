class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.string :description
      t.string :image
      t.string :video
      t.string :link
      t.string :tags

      t.timestamps
    end
  end
end
