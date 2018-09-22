class RenameTextColumnToComments < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :text, :comment
  end
end
