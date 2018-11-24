class Api::V1::ChatsController < ApplicationController




  def create

    @chat = Chats.new(chat_params)
    if @chat.save
      render json:  @chat
    else
      render json: {errors: @chat.errors.full_messages}
    end
  end


  def index
    @chats = Chat.all
    render json: @chats

  end

  def show
    @chat = Chats.find(params[:id])
    render json: @chat
  end

  def destroy
    @chat = Chats.find(params[:id])
    @chat.destroy
  end

  private


  def chat_params
    params.require(:chat).permit(:title, :content)
  end
end
