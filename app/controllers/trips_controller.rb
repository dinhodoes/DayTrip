class TripsController < ApplicationController

	def create
    	trip = Trip.new(params.require(:trip).permit(:origin, :destination)
  		)
    	#origin = Origin.new()
    	#destination = Destination.new()

	  	if trip.save
		  	redirect_to trips_path
	    else
	      render 'new'
	  	end


	    # @origin = Origin.find(params[:origin_id])
	    # @destination = Destination.find(params[:destination_id])
	    # @trip = Trip.new(
	    #   params.require(:origin, :destination).permit(:text)
	    #   )
	    
	    # @trip.origin.destination = @trip
	    # if @trip.save
	    #   redirect_to map_path #need to update this
	    #  else
	    #  render 'new' 
	    # end
  	end


  	def index
	  	@trips = Trip.all
	 end

	  def new
	  	@trip = Trip.new
	  	# @origin = Origin.new
    # 	@destination = Destination.new
	  end

	  

	  def edit
	    
	  end

	  def destroy
	  	Trip.find(params[:id]).destroy
	  	redirect_to trips_path
	  end

end
