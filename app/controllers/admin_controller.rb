class AdminController < ApplicationController
  def index
    @shelters = Shelter.order_by_alph
    @shelters_with_apps = Shelter.active_applications
  end

  def shelter_show
    @shelter = Shelter.find(params[:id])
  end
end