class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_lesson

  def show
  end

  private

<<<<<<< HEAD
  def require_authorized_for_current_course
    if !current_user.enrolled_in?(current_course)
      redirect_to course_path(current_course), :alert => 'You must be enrolled to access lessons.  Enroll today!'
=======
    def require_authorized_for_current_lesson
    if !current_user.enrolled_in?(current_lesson.section.course)
      redirect_to course_path(current_lesson.section.course), :alert => 'You must be enrolled in the course to access the lesson.  Enroll today!'
>>>>>>> d4005020b54980cc3cc6f6e9a9a604b8684554d8
    end
  end

  helper_method :current_course
  def current_course
    @current_course ||= Course.find(params[:id])
  end
end
