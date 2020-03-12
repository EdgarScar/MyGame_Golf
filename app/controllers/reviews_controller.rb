class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @review.rateable_type = params.keys.first.capitalize
    @review.rateable_id = params[params.keys.first]
  end 


  def create 
    @review = Review.new
    @review.rateable_type = params[:review][:rateable_type]
    @review.rateable_id = params[:review][:rateable_id]
    @review.user_id = current_user.id 
    @review.rating = params[:review][:rating]
    @review.comment = params[:review][:comment]
    if @review.save
      redirect_to course_path(@review.rateable_id)
    else 
      flash[:alert] = "Opps, something went wrong when creating your review"
      redirect_to courses_path
    end 
  end 

end
