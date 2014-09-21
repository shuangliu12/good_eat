class ReviewsController < ApplicationController

  def new
   @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      flash[:notice] = 'Invalid Input'
      render 'restaurants/show'
    end
  end

  private
    def review_params
      params.require(:review).permit(:rating, :body)
    end

end
