class CreateOffsets < ActiveRecord::Migration
  def change
    create_table :offsets do |t|
      t.string :name
      t.string :permalink
      t.text :description
      t.integer :price

      t.timestamps
    end
  end
end
