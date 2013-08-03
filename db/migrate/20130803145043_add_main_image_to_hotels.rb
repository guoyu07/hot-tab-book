class AddMainImageToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :main_image, :string
  end
end
