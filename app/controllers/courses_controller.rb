class CoursesController < ApplicationController
  def index
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:title, :description, :cost, :avatar)
  end

  private
  
  helper_method :current_course
  def current_course
    @current_course ||= Course.find(params[:id])
  end
end