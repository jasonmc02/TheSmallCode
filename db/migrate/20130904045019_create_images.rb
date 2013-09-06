class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :post_id
      t.string :location
      t.integer :order

      t.timestamps
    end
  end
end
