class CreateArtworkMoodboards < ActiveRecord::Migration[5.1]
  def change
    create_table :artwork_moodboards do |t|
      t.integer :artwork_id
      t.integer :mood_board_id
    end
  end
end
