

class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.string :file_name
      t.text :points

      t.timestamps
    end
  end
end
