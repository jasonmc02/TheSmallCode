class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :surname
      t.string :nickname
      t.integer :user_id, :default => 0
      t.string :other

      t.timestamps
    end
  end
end
