class AccountsController < ApplicationController
  before_action :authenticate_user!
  def edit
    render inertia: "Account/Settings", props: { user: current_user }
  end
end
