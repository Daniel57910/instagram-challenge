class PostsController < ApplicationController

  def index
    @posts = Post.order('created_at')
  end

  def new
    @post = Post.new
    p params
  end

  def create
    @post = Post.new(post_params)
    p params
    if @post.save
      flash[:notice] = "Successfully added post!"
      redirect_to ('/posts')
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
