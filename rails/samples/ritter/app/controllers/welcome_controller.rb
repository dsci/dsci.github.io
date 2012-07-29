class WelcomeController < ApplicationController

  #before_filter :authenticate_user!, :except => "index"
  respond_to :html, :js

  def index
    if current_user
      @post = Post.new
      @my_posts = Post.by_author(current_user)
      @posts = Post.all#_except(current_user)
    else
      @posts = Post.limit(10)
    end
  end

  def fave
    @post = Post.find(params[:id])
    respond_to do |format|
      format.js do
        render action: "fave", script: true, :layout => false 
      end
    end
    #respond_with(Post.find(params[:id]))
  end
end
