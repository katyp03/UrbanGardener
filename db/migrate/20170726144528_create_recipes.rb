class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.string :rsite
      t.string :title
      t.string :rpic
      t.timestamps
    end
  end
end
