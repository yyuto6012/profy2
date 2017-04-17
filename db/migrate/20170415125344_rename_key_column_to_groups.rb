class RenameKeyColumnToGroups < ActiveRecord::Migration[5.0]
  def change
    rename_column :groups, :key, :group_key
  end
end
