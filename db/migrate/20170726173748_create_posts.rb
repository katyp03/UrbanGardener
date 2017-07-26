class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.attachment :picture
      t.string :caption
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end