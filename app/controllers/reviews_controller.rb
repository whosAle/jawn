class ReviewsController < ApplicationController
  before_action :find_review, only: [:edit, :update, :destroy]

  def new
    @review = Review.new
    @users = User.all
    @activity = Activity.find(params[:format].to_i)
  end

  def create

    @review = Review.create(review_params(:description, :rating, :user_id, :activity_id))
    if @review.valid?
      redirect_to activity_path(@review.activity)
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to new_review_path
    end
  end

  def edit
    render :edit
  end

  def update
    @review.update(review_params(:description, :rating, :activity_id))
    if @review.valid?
      redirect_to activity_path(@review[:activity_id])
    else
      flash[:errors] = @review.errors.full_messages
      redirect_to edit_review_path
    end
  end

  def destroy

  end

  private

  def review_params(*args)
    #params.require(:review).permit(:description, :rating, :user_id, :activity_id)
    params.require(:review).permit(args)
  end

  def find_review
    @review = Review.find(params[:id])
  end

end
