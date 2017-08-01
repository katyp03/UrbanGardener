class UserRecipe < ActiveRecord::Migration[5.1]
  def change
  	create_table :user_recipes do |t| #, id: false
     t.belongs_to :user
     t.belongs_to :recipe
     t.timestamps
    end
  end
end
