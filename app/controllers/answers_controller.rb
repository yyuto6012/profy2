class AnswersController < ApplicationController
  before_action :redirect_root, only: :new
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

  def redirect_root
    @question = Question.find(params[:question_id])
    if @question.answers.exists?(user_id: current_user.id)
      redirect_to :root
    end
  end
end
