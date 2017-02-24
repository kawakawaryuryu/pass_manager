class RenamePassesTable < ActiveRecord::Migration[5.0]
  def change
    rename_table :passes, :accounts
  end
end
