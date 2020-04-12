class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :blog
      t.integer :favorite_user

      t.timestamps
    end
  end
end
