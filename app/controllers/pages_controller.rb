class PagesController < ApplicationController
  def index
    render inertia: "PublicHome"
  end
end
