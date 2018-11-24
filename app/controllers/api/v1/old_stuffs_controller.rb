class Api::V1::OldStuffsController < ApplicationController


  def create

    @old_stuff = OldStuff.new(old_stuffs_params)
    if @old_stuff.save
      render json:  @old_stuff
    else
      render json: {errors: @old_stuff.errors.full_messages}
    end
  end


  def index
    @old_stuffs = OldStuff.all
    render json: @old_stuffs
  end

  def show
    @old_stuff = OldStuff.find(params[:id])
    render json: @old_stuff
  end

  def destroy
    @old_stuff = OldStuff.find(params[:id])
    @old_stuff.destroy
  end

  private


  def old_stuffs_params
    params.require(:old_stuff).permit(:title, :description, :link, :image, :ematch_id)
  end
end
