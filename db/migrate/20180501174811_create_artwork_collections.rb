class CreateArtworkCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :artwork_collections do |t|
      t.integer :artwork_id
      t.integer :collection_id
    end
  end
end
