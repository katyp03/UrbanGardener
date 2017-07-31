class UserPlant < ActiveRecord::Migration[5.1]
  def change
  	create_table :user_plants do |t| #, id: false
     t.belongs_to :user
     t.belongs_to :plant
     t.timestamps
    end
  end
end
