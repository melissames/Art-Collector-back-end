class CreateColors < ActiveRecord::Migration[5.1]
  def change
    create_table :colors do |t|
      t.string :name
      t.integer :artwork_id
    end
  end
end
