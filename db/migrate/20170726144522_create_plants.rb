class CreatePlants < ActiveRecord::Migration[5.1]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :sname
      t.text :care
      t.integer :water
      t.string :sale
      t.integer :size
      t.attachment :image

      t.timestamps
    end
  end
end
