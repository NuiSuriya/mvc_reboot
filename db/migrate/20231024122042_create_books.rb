class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :category
      t.integer :price, default: 0
      t.timestamps
    end
  end
end
