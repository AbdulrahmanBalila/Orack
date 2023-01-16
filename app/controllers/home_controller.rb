class HomeController < ApplicationController
  def index
    @car = Car.near([21.504613, 39.243043], 20)
  end

  def details
    @car = Car.find(params[:id])
  end
end
