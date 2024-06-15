class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.string :file_path

      t.timestamps
    end
  end
end
