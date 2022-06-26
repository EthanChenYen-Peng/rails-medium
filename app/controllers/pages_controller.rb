class PagesController < ApplicationController
  def index
    if current_user
      render inertia: "Home"
    else
      render inertia: "PublicHome"
    end
  end

end
