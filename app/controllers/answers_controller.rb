class AnswersController < ApplicationController
  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @answer = current_user.answers.new(answer_params)
    @answer.save
  end

  private
  def answer_params
    params.require(:answer).permit!
  end
end
