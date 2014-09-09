

class CreatePoints < ActiveRecord::Migration

  def change
    create_table :points do |t|
      
      t.string :id_xls
      t.string :name
      t.string :categorie
      t.string :type
      t.string :pos_deg_lat
      t.string :pos_deg_long
      t.string :pos_dec_lat
      t.string :pos_dec_long
      t.string :add_street
      t.string :add_number
      t.string :add_district
      t.string :add_city
      t.string :add_country
      t.string :add_phone_1
      t.string :add_phone_2
      t.string :add_more
      t.string :open_hours
      t.string :www
      t.string :facebook

      t.timestamps
    end
  end
end
