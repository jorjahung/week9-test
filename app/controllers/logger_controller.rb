class LoggerController < ApplicationController
  def index
 
  end

  def counter
    @user = current_user
  end
end
