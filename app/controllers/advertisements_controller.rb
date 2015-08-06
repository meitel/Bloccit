class AdvertisementsController < ApplicationController
  
  #localhost/advertisements
  def index
    @advertisements = Advertisement.all
  end

  #localhost/advertisements/234
  def show
    @advertisement = Advertisement.find(params[:id])
  end
end
