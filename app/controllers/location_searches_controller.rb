class LocationSearchesController < ApplicationController

  def new
    @location_search = LocationSearch.new
  end

  def create
    @location_search = current_user.location_searches.create(location_search_params)

    if @location_search.save
      redirect_to @location_search,
        notice: "Location successfully created"
    else
      render :new
    end
  end

  def show
    @location_search = LocationSearch.find(params[:id])
  end

  private

  def location_search_params
    params.require(:location_search).permit(:address)
  end

end
