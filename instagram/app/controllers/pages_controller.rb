class PagesController < ApplicationController
  def home
    @posts = Post.where(active: true)
  end
end
