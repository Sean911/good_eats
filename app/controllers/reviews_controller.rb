class ReviewsController < ApplicationController


  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
    redirect_to restaurant_path(@restaurant)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)
    if @review.valid?
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
