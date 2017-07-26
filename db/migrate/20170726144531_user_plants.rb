class UserPlants < ActiveRecord::Migration[5.1]
  def change
  	create_table :user_plants, id: false do |t|
     t.belongs_to :user
     t.belongs_to :plant
     t.timestamps
    end
  end
end
