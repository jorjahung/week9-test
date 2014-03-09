class LoggerController < ApplicationController
  def index
    redirect_to counter_path if user_signed_in?
  end

  def counter
    @user = current_user
  end
end
