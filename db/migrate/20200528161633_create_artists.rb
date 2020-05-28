class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.references :country, foreign_key: true
      t.string :story

      t.timestamps
    end
  end
end
