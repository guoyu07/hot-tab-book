class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title

      t.references :hotel
      t.timestamps
    end
  end
end
