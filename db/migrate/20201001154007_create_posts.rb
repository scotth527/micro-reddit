class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null:false
      t.string :body, null:false
      t.integer :vote_count, null:false, :default => 0

      t.timestamps
    end
  end
end
