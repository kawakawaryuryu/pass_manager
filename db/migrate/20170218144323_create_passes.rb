class CreatePasses < ActiveRecord::Migration[5.0]
  def change
    create_table :passes do |t|
      t.string :site
      t.string :mail
      t.string :pass

      t.timestamps
    end
  end
end
