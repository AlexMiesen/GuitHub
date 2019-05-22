class DashboardsController < ApplicationController
  def show
    # temporary until we have sign in
    @user = User.find(23)
  end
end
