class Api::V1::RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
    render json: @recommendations
  end

  def create

    @recommendation = Recommendation.new(recommendation_params)

    if @recommendation.save
      render json:  @recommendation
    else
      render json: { errors: @recommendation.errors.full_messages }, status: 422
    end
  end

  def show
    @recommendation = Recommendation.find(params[:id])
    render json: @recommendation
  end


  private

  def recommendation_params
    params.require(:recommendation).permit(:review, :user_id)
  end
end
