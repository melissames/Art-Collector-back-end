class CreateSimilarities < ActiveRecord::Migration[5.1]
  def change
    create_table :similarities do |t|
      t.string :name
      t.integer :artwork_id
    end
  end
end
