class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :table_number
      t.integer :capacity
      t.string :description

      t.references :hotel
      t.references :booking
      t.timestamps
    end
  end
end
