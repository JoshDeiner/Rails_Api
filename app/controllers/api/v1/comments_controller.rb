class Api::V1::CommentsController < ApplicationController

  def create


    @comment = Comment.new(comment_params)
    if @comment.save
      render json:  @comment
    else
      render json: {errors: @comment.errors.full_messages}
    end
  end

  def index
    @comments = Comment.all
    render json: @comments

  end

  def show
    @comments = Comment.find(params[:id])
    render json: @comments
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private


  def comment_params
    params.require(:comment).permit(:content, :user_id, :user_name, :resource_id, :category_id)
  end
end
