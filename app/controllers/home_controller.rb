class HomeController < ApplicationController
  # Geosorting on the home page, the measurement unit is done in KM.
  # Please check "config/initializers/geocoder.rb" for any configurations.
  def index
    @car = Car.near([21.504613, 39.243043], 20)
  end
  # the "show" from home page.
  def details
    @car = Car.find(params[:id])
  end
  # failed attempt to make a "check range" function.
  # Couldn't figure out how to grab the id into said function.
  def book
    puts params[:start_date]
    puts params[:end_date]
    puts params[:available_from]
    puts params[:available_until]

    if :start_date > :available_from && :end_date < :available_until
      flash.alert = "Successfully Booked!"
    else
      flash.alert = "Sorry, Car is unavailable"
    end
    
    redirect_to "/details/"
  end

end
