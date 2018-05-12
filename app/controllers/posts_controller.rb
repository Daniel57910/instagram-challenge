class PostsController < ApplicationController

  def index
    @posts = Post.order('created_at')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Successfully added post!"
      redirect_to root_path ('/')
    else
      flash[:alert] = "Error adding new post!"    
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :image)
  end
end
