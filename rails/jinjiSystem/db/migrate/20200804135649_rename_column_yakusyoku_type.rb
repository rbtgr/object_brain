class RenameColumnYakusyokuType < ActiveRecord::Migration[6.0]
  def change
    rename_column :shains, :yakushoku, :type
  end
end
