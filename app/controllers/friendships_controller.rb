class FriendshipsController < ApplicationController



  def create
    Friendship.create(params.permit(:user_id, :followee_id))
    redirect_to user_path(params[:followee_id])
  end

  def destroy
    friendship = Friendship.find_by(user_id: current_user.id, followee_id: params[:followee_id])
    friendship.destroy
    redirect_to user_path(params[:followee_id])
  end


end
