class PostsController < ApplicationController

  respond_to :html

  def create
    @post = Post.new(params[:post])
    @post.author = current_user
    if @post.save
      flash[:notice] = "You composed your post successfully."
      redirect_to root_url 
    else
      flash[:alert] = "Something went wrong"
      redirect_to root_url
    end
  end
end
