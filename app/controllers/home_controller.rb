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
  # check range of booking time/ if car is available or not
  # I used "more/less than or equal" symbol to check, since the view shows (car.available_from/until) as available dates
  def book
    if params[:start_date] >= params[:available_from] && params[:end_date] <= params[:available_until]
      flash.notice = "Successfully Booked!"
    else
      flash.alert = "Sorry, Car is unavailable"
    end
    
    redirect_to "/details/"
  end
end
