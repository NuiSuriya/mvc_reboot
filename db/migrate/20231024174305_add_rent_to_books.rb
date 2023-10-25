class AddRentToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :rent, :boolean, default: false
  end
end
