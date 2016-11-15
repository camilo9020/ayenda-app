class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.integer :type
      t.integer :capacity
      t.decimal :price
      t.boolean :available
      t.references :hotel, foreign_key: true

      t.timestamps
    end
  end
end
