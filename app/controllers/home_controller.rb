class HomeController < ApplicationController
  def index
  end

  def me
    @user = User.find_by(username: params[:username])
  end
end
