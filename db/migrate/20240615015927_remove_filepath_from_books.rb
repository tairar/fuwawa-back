class RemoveFilepathFromBooks < ActiveRecord::Migration[7.1]
  def change
    remove_column :books, :file_path, :string
  end
end
