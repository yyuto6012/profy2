class QuestionsController < ApplicationController

  def create
    @question = Question.new(question_params)
    @question.save
    redirect_to :root and return
  end

  private
  def question_params
    params.require(:question).permit!.merge(user_id: current_user.id, group_id: current_user.group.id)
  end
end

