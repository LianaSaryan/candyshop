class CreateShelves < ActiveRecord::Migration[5.2]
  def change
    create_table :shelves do |t|
      t.references :shop, foreign_key: true
      t.integer :num_of_candies

      t.timestamps
    end
  end
end
