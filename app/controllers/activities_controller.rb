class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show, :edit, :update]

  def index
    @all_activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
    @neighborhood = Neighborhood.find(params[:format].to_i)
    @CATEGORY = ["restaurant", "retail", "monument", "museum", "park", "nightclub", "bar"]
    @SETTING = ["indoor", "outdoor", "both"]
    @time_of_day = TimeOfDay.new
  end

  def create
    byebug
    @activity = Activity.create(activity_params)
    @time_of_day = TimeOfDay.create(params.require(:time_of_day).permit(:morning, :afternoon, :evening, :late_night))
    @time_of_day.update(activity_id: @activity.id)
    if @activity.valid?
      redirect_to @activity
    else
      flash[:errors] = @activity.errors.full_messages
      redirect_to new_activity_path
    end
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    if @activity.valid?
      redirect_to @activity
    else
      flash[:errors] = @activity.errors.full_messages
      redirect_to edit_activity_path
    end
  end

  private

  def find_activity
    @activity = Activity.find(params[:id])
  end


  def activity_params
    params.require(:activity).permit(:name, :category, :setting, :tod, :neighborhood_id, :url_link)
  end

  def slugify(name)
    name.downcase.strip.gsub(' ', '+').gsub(/[^\w+]/, '')
  end
end
