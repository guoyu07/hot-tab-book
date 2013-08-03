class AddCityToHotel < ActiveRecord::Migration
  def change
    add_column :hotels, :city, :string
  end
end
