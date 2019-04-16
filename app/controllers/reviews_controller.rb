class ReviewsController < ApplicationController
  before_action :find_review, only: [:edit, :destroy]

  def new
    session[:activity_id] ||= params[:format]
    @review = Review.new
    @users = User.all
    @activity = Activity.find(session[:activity_id].to_i)
  end

  def create

    @review = Review.create(review_params)
    if @review.valid?
      session[:activity_id] = nil
      redirect_to activity_path(@review.activity)
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to new_review_path
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def review_params
    params.require(:review).permit(:description, :rating, :user_id, :activity_id)
  end

  def find_review
    @review = Review.find(params[:id])
  end

end
