class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.integer :num_of_shelves

      t.timestamps
    end
  end
end
