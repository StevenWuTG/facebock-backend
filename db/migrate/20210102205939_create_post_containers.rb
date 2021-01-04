class CreatePostContainers < ActiveRecord::Migration[6.0]
  def change
    create_table :post_containers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
# This is our version of the wall 