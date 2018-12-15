class CreatePotholes < ActiveRecord::Migration[5.1]
  def change
    create_table :potholes do |t|
      t.string :streetAdress
      t.integer :size
      t.string :location
      t.string :district

      t.timestamps
    end
  end
end
