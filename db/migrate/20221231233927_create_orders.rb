class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, :id => false do |t|
      t.string :id
      t.string :technician_id
      t.string :location_id
      t.string :time
      t.string :duration
      t.string :price

      t.timestamps
    end
  end
end
