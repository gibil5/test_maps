

# jr@oblique:  5/9/14


class MapsController < ApplicationController



  def show
    @map = Map.find(params[:id])
  end



  def new
  	puts "\njx: MapsController.new\n"
  	puts "jx: MapsController.new"
  	@map = Map.new
  	#@map.initialize
  	#@map.name = 'name'
  	#@map.file_path = 'file_path'
  end



  def create
    
  	puts "jx: MapsController.create"
  
    @map = Map.new(map_params)


    require 'spreadsheet'
    puts 'test spreadsheet...'
    Spreadsheet.client_encoding = 'UTF-8'
    book = Spreadsheet.open 'app/assets/xls/restaurants.xls'
    puts book 
    sheet1 = book.worksheet 'Points'
    
    f = sheet1.row(0)

    sheet1.each do |row|
      x = 0
      p = {}
      row.each do |field|
        p[f[x]] = row[x]
        x += 1
      end
      #puts 'mark'
      #puts p

      @map.points << p 


      #point = Point.new
      #point.create(p)
      #if point.save 
      #    puts 'point saved'
      #else
      #    puts 'error'
      #end

    end

    puts 'mark'
    puts @map.points 

    if @map.save 
      puts 'map saved'
    else
      puts 'error: map save'
    end


    #f = sheet1.row(0)
    #f.each do |ff|
    #  puts ff
    #end

    #if @user.save
    #  sign_in @user
      #flash[:success] = "Welcome to the Sample App!"
    #  redirect_to @user
    #else
    #  render 'new'
    #end
  end 



  private
    def map_params
      params.require(:map).permit(:name, :file_name)
    end


end
