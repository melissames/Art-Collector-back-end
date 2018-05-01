class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.integer :artist_id
      t.string :name
      t.string :size
      t.string :collector
      t.string :popularity
      t.string :img
      t.string :similar
    end
  end
end
