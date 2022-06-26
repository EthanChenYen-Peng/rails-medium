class AccountsController < ApplicationController
  def edit
    render inertia: "Account/Settings"
  end
end
