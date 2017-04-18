class QuestionsController < ApplicationController

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to :root and return
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers
  end

  private
  def question_params
    params.require(:question).permit!.merge(user_id: current_user.id, group_id: current_user.group.id)
  end
end

