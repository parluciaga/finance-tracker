class UsersController < ApplicationController
  def show
  end

  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def friends
    if params[:friend].present?
      @friends = current_user.lookup_friend(params[:friend])
    else
      @friends = current_user.friends
    end
  end

end
