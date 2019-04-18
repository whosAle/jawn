class NeighborhoodsController < ApplicationController

  def index
    @neighborhoods = Neighborhood.all
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])

    @CATEGORY = ["restaurant", "retail", "monument", "museum", "park", "nightclub", "bar"]
    @SETTING = ["indoor", "outdoor", "both"]
    params[:search] ? filter = params[:search].slice(:category, :setting) : filter = {}
    @activities = Activity.filter_by_neighborhood(@neighborhood.id, filter)
  end
end
