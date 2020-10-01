class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :body, null: false
      t.integer :vote_count, :default => 0
      t.timestamps
    end
  end
end
