class CreateSitemaps < ActiveRecord::Migration
  def change
    create_table :sitemaps do |t|
      t.references :hotel
      t.timestamps
    end
  end
end
