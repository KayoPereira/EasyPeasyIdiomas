class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show]

  def index
    @lessons = Lesson.where(teacher_id: current_user.id)
    @teachers = Lesson.distinct.pluck(:teacher_id)
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.teacher = current_user
    if @lesson.save
      redirect_to lessons_path
    else
      render :new
    end
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:day_hour, :student_id, :teacher_id, :language)
  end
end