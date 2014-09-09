
# jr:  5/9/14


class Point < ActiveRecord::Base



  def new
  	#@point = self
  end


  def create(p)

  	f = [
		'id_xls', 
		'name',
		'categorie',
		'type',
		'pos_deg_lat',
		'pos_deg_long',
		'pos_dec_lat',
		'pos_dec_long',
		'add_street',
		'add_number',
		'add_district',
		'add_city',
		'add_country',
		'add_phone_1',
		'add_phone_2',
		'add_more',
		'open_hours',
		'www',
		'facebook'
	]


  	puts "\njx: Point:create"
  	#puts p

  	
  	f.each do |ff|
  		self[ff] = p[ff]
  	end


  	#puts 'mark'
  	#puts self.id_xls
  	#puts self.name
  	#puts self.categorie
  	#puts self.type

  end

end
