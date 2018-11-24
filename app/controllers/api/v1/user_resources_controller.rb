class Api::V1::UserResourcesController < ApplicationController


  def create

    @user_resource = UserResource.new(user_resource_params)
    if @user_resource.save
      render json:  @user_resource
    else
      render json: {errors: @user_resource.errors.full_messages}
    end
  end


  def index
    @user_resources = UserResource.all
    render json: @user_resources
  end

  def show
    @user_resources = UserResource.find(params[:id])
    render json: @user_resources
  end

  def destroy
    @user_resource = UserResource.find(params[:id])
    @user_resource.destroy
  end

  private


  def user_resource_params
    params.require(:user_resource).permit(:user_id, :slug, :wrestling_name, :image_url, :source_link, :comments, :dmatch_id)
  end


end
