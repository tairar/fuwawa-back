class ChangeColumnOrderInBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :new_created_at, :datetime
    add_column :books, :new_updated_at, :datetime

    reversible do |dir|
      dir.up do
        execute <<-SQL
          UPDATE books
          SET new_created_at = created_at,
          new_updated_at = updated_at;
        SQL
      end
    end

    remove_column :books, :created_at
    remove_column :books, :updated_at
    
    rename_column :books, :new_created_at, :created_at
    rename_column :books, :new_updated_at, :updated_at
  end
end
