class CreateTechnicians < ActiveRecord::Migration[7.0]
  def change
    create_table :technicians, :id => false do |t|
      t.string :id
      t.string :name

      t.timestamps
    end
  end
end
