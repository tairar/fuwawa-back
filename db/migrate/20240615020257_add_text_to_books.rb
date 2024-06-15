class AddTextToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :text, :text
  end
end
