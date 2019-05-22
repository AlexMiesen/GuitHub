class DashboardsController < ApplicationController
  def show
    # temporary until we have sign in
    @user = User.find(24)
  end
end
