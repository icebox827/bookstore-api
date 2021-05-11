class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :category
      t.integer :book_id

      t.timestamps
    end
    add_index :categories, :book_id
  end
end
