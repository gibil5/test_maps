


module MapsHelper

		#@map.points.each do |p|
        	#p.each do |pp|
	        #	puts pp 
     		#	puts 
     		#end
     		#p[:name]
     	#end
     	#@map.points[1].name	

	def getCoordsLat(i)
     	@map.points[i]["pos_dec_lat"]
    end

	def getCoordsLong(i)
     	@map.points[i]["pos_dec_long"]
    end

    def getName(i)
     	@map.points[i]["name"]
    end

    def getAll
		all_points = {}
		@map.points.each do |p|
        	#p.each do |pp|
	        #	puts pp 
     		#	puts 
     		#end
     		#p[:name]
     		idx = p['idx_xls']
     		all_points[idx] = p['name']
     	end
     	#@map.points[1].name	
     	#puts
     	#'gets all'
     	all_points
    end 

end
