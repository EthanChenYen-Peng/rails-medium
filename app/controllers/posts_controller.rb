class PostsController < ApplicationController
  def new
    render inertia: 'Posts/New'
  end
end
