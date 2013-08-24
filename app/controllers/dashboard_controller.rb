class DashboardController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @person = @user.person
  end

  def settings
  end
end
