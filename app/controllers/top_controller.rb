class TopController < ApplicationController
before_action :authenticate_user!, :only => [:show, :index]
before_action :set_all_questions, :only => [:show, :index]
  def index
    @question = Question.new
  end

  def show
  end

  private
  def set_all_questions
    @questions = current_user.group.questions
  end
end
