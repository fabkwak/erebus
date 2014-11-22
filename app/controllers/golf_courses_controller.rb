class GolfCoursesController < ApplicationController
  def new
   @golf_course = GolfCouse.new
  end

  def show
    @golf_course = GolfCourse.find(params[:id])
    @tees = @golf_course.tees
  end

  def create
   @golf_club = GolfClub.new(params[:golf_club])
    if @golf_club.save
      flash[:success] = "New Golf Club Created"
      redirect_to @golf_club
    else
      render 'new'
    end
  end
end
