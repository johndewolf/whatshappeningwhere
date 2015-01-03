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

  def edit
    @location_search = current_user.location_searches.find(params[:id])
  end

  def update
    @location_search = current_user.location_searches.find(params[:id])
      if @location_search.update(location_search_params)
        redirect_to @location_search, notice: 'Location was successfully updated.'
      else
        render action: 'edit'
      end
  end

  def destroy
    current_user.location_searches.find(params[:id]).destroy
      redirect_to user_path(current_user), notice: 'Location was deleted'
  end

  def show
    @location_search = LocationSearch.find(params[:id])
    @instagrams = Instagram.media_search(@location_search.latitude,
                    @location_search.longitude)

    @user = current_user
  end

  private

  def location_search_params
    params.require(:location_search).permit(:address, :description)
  end

end
