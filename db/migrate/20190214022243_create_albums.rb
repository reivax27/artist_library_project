class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.integer :units_sold
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
