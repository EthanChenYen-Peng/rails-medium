class ApplicationController < ActionController::Base
  before_action do
    ActiveStorage::Current.host = request.base_url
  end

  include InertiaFlash

  inertia_share do
    { 'user' => current_user, 'avatar'=> current_user.avatar.url } if current_user
  end
end
