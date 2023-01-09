class AppearancesController < ApplicationController

  ### Theses methods are jsut for tesing purposes ###
  def index 
    render json: Appearance.all
  end

  def show
    appearance = Appearance.find_by(id: params[:id])
    if (appearance)
      render json: appearance
    else
      render json: {error: "Appearance does not exist"}
    end
  end
  ###


  def create
    appearance = Appearance.create(rating: params[:rating], episode_id: params[:episode_id], guest_id: params[:guest_id])
    if (appearance.valid?)
      render json: appearance
    else
      render json: {errors: appearance.errors.full_messages}
    end
  end
end
