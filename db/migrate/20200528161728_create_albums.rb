class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.references :artist, null: false, foreign_key: true
      t.integer :year_recorded

      t.timestamps
    end
  end
end
