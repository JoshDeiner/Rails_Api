class CurrentUsersController < ApplicationController

  def create

    @current_user = CurrentUser.new(current_user_params)
    if @current_user.save
      token = issue_token({current_user_id: @current_user.id})
      render json: {current_user: @current_user, token: token}
    else
      render json: {errors: @current_user.errors.full_messages}, status: 422
    end
  end

  def index
    @current_users = CurrentUser.all
    render json: @current_users
  end

  private

  def current_user_params
    params.require(:current_user).permit(:user_name)
  end
end
