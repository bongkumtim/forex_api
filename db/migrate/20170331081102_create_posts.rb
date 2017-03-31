class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :a 
      t.integer :b
      t.timestamps
    end
  end
end
