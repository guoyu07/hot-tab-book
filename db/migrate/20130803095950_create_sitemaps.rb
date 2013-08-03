class CreateSitemaps < ActiveRecord::Migration
  def change
    create_table :sitemaps do |t|

      t.timestamps
    end
  end
end
