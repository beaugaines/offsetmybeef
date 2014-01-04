class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :email
      t.string :guid
      t.references :offset, index: true

      t.timestamps
    end
  end
end
