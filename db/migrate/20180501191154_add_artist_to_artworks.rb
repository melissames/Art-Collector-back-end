class AddArtistToArtworks < ActiveRecord::Migration[5.1]
  def change
    add_column :artworks, :artist, :string
  end
end
