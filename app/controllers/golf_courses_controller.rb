class GolfCoursesController < ApplicationController
  def new
 
  end

  def show
    @golf_course = GolfCourse.find(params[:id])
    @tees = @golf_course.tees
  end

  def create
   
  end
end
