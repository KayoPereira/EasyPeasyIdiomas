class LessonCommentsController < ApplicationController
  before_action :set_lesson, only: [:show, :new, :create]

  def show
    @lesson_comment = @lesson.lesson_comment
  end

  def new
    @lesson_comment = LessonComment.new
  end

  def create
    @lesson_comment = LessonComment.new(lesson_comment_params)
    @lesson_comment.lesson = @lesson
    if @lesson_comment.save
      redirect_to lessons_path
    else
      render :new
    end
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:lesson_id])
  end

  def lesson_comment_params
    params.require(:lesson_comment).permit(:content)
  end
end
