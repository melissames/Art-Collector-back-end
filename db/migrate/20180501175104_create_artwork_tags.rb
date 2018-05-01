class CreateArtworkTags < ActiveRecord::Migration[5.1]
  def change
    create_table :artwork_tags do |t|
      t.integer :artwork_id
      t.integer :tag_id
    end
  end
end
