class PostsController < ApplicationController
  def show
    
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to root_path, flash: { success: "Post was created successfully" }
    else
      redirect_to new_post, flash: { danger: "Post was not saved" }
    end
  end

  def post_params
    params.require(:post).permit(:image, :image_cache)
  end
end