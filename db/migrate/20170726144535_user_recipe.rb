class UserRecipe < ActiveRecord::Migration[5.1]
  def change
  	create_table :user_recipes, id: false do |t|
     t.belongs_to :user
     t.belongs_to :recipe
     t.timestamps
    end
  end
end
