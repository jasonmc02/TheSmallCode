class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :title
      t.string :content
      t.string :author
      t.datetime :date

      t.timestamps
    end
  end
end
