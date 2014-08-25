class GolfCourseController < ApplicationController
  def new
    @golf_course = GolfCourse.new
  end

  def show
    @golf_course = GolfCourse.find(params[:id])
    @tees = @golf_course.tees
    #@holes = Hole.where(tee_id: @tees.id)
  end

  def create
    @golf_course = GolfCourse.new(params[:golf_course])
    if @golf_course.save
      flash[:success] = "New Golf Course Created"
      redirect_to @golf_course
    else
      render 'new'
    end
  end
end
