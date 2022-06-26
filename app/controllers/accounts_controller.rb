class AccountsController < ApplicationController
  before_action :authenticate_user!
  def edit
    render inertia: "Account/Settings", props: { user: current_user }
  end

  def update
    if current_user.update(user_params)
      render inertia: "Account/Settings", props: { user: current_user }
    else
      redirect_to own_settings_path, inertia: { errors: current_user.errors }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
