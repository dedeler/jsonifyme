class HomeController < ApplicationController
  def index
    @last_users = User.limit(10)
  end

  def me
    @user = User.find_by(username: params[:username])
  end
end
