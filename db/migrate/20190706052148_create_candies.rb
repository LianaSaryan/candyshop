class CreateCandies < ActiveRecord::Migration[5.2]
  def change
    create_table :candies do |t|
      t.references :shop, foreign_key: true
      t.string :name
      t.integer :belongs_to_shelf

      t.timestamps
    end
  end
end
