class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :type
      t.float :area
      t.integer :price
      t.text :address
      t.float :lang
      t.float :lat
      t.attachment :image

      t.timestamps null: false
    end
  end
end
