class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :id_xls
      t.string :name

      t.timestamps
    end
  end
end
