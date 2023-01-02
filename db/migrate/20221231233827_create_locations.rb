class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations, id:false do |t|
      t.string :id
      t.string :name
      t.string :city

      t.timestamps
    end
  end
end
