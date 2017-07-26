class StaticController < ApplicationController

  def index
  end

  def profile
    @user = User.find_by_username(params[:username])
  end

end
