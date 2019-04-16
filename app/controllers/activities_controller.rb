class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show, :edit, :update]

  def index
    @all_activities = Activity.all
  end

  def show
  end

  def new
    session[:neighborhood_id] ||= params[:format]
    @activity = Activity.new
    @neighborhood = Neighborhood.find(session[:neighborhood_id].to_i)
    @CATEGORY = ["restaurant", "retail", "monument", "museum", "park", "nightclub", "bar"]
    @SETTING = ["indoor", "outdoor", "both"]
    @time_of_day = TimeOfDay.new
  end

  def create
    @activity = Activity.create(activity_params)
    @time_of_day = TimeOfDay.new(params.require(:time_of_day).permit(:morning, :afternoon, :evening, :late_night))
    @time_of_day.save
    @time_of_day.update(activity_id: @activity.id)
    if @activity.valid? && @time_of_day.valid?
      session[:neighborhood_id] = nil
      redirect_to @activity
    else
      flash[:a_errors] = @activity.errors.full_messages
      flash[:tod_errors] = @time_of_day.errors.full_messages
      redirect_to new_activity_path
    end
  end

  def edit

    @CATEGORY = ["restaurant", "retail", "monument", "museum", "park", "nightclub", "bar"]
    @SETTING = ["indoor", "outdoor", "both"]
    @time_of_day = TimeOfDay.new
  end

  def update
    byebug
    @activity.update(activity_params)
    if @activity.valid?
      redirect_to @activity
    else
      flash[:a_errors] = @activity.errors.full_messages
      flash[:tod_errors] = @time_of_day.errors.full_messages
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
