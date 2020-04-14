class LikepostsController < ApplicationController
  def create
    @likepost = Likepost.where(post_id: params[:post_id], user_id: current_user.id)
    if @likepost.length === 0
      like_post
    else
      unlike_post
    end
  end

  private 

  def like_post
    Likepost.create(user_id: current_user.id , post_id: params[:post_id])
    redirect_to root_path
  end

  def unlike_post
    Likepost.delete(@likepost)
    redirect_to root_path
  end
end
