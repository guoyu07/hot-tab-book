class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :data

      t.references :gallery
      t.timestamps
    end
  end
end
