class PostsController < ApplicationController
  def new
    render inertia: 'Posts/New'
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to root_path
    else
      redirect_to new_post_path, inertia: { errors: @post.errors }
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
