class CreateMoodBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :mood_boards do |t|
      t.string :name
    end
  end
end
