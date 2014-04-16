class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.references :user, index: true
      t.string :picture
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
