class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :website
      t.string :email

      t.references :user
      t.timestamps
    end
  end
end
