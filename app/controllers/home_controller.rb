class HomeController < ApplicationController

   def index
    @q = Service.ransack(params[:q])
    @service = @q.result(distinct: true)
   end
 
 def search_by_location
  @serviceMen = ServiceMan.find(params[:id])
    lat = @serviceMen.latitude
    long =@serviceMen.longitude

    @locations = ServiceMan.near([lat,long],20)
    puts @locations
 end

end
