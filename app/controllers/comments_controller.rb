require 'pry'
class CommentsController < PostsController

  def new
    binding.pry
    binding.pry
    @comment = Comments.new(params[:comments])
  end

end