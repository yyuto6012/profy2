class AnswersController < ApplicationController
  before_action :redirect_root, only: :new
  before_action :set_answer, only: [:edit, :update]
  before_action :set_answer_questions, only: [:edit, :update]
  def new
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new
  end

  def create
    @answer = current_user.answers.new(create_params)
    @answer.save
  end

  def edit
  end

  def update
    @answer.update(update_params)
  end

  private
  def create_params
    params.require(:answer).permit!
  end

  def update_params
    params.require(:answer).permit!
  end

  def set_answer
    @answer = Answer.find(params[:id])
  end

  def set_answer_questions
    @question = @answer.question
  end

  def redirect_root
    @question = Question.find(params[:question_id])
    if @question.answers.exists?(user_id: current_user.id)
      redirect_to :root
    end
  end

end
