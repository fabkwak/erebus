class GolfCourseController < ApplicationController
  def new
    @golf_club = GolfClub.new
  end

  def show
    @golf_club = GolfClub.find(params[:id])
    @courses = @golf_club.courses
    #@holes = Hole.where(tee_id: @tees.id)
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
