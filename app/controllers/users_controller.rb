class UsersController < ApplicationController

  def after_user_sign_in
    if user_signed_in?
      redirect_to events_index_path
    end
  end
end
