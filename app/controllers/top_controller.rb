class TopController < ApplicationController
before_action :authenticate_user!, :only => [:show, :index]
before_action :set_all_questions, :only => [:show, :index]
  def index
    @question = Question.new
    @feed_contents = current_user.group.feed_contents.page(params[:page]).per(5)
    @feed_contents_resource = @feed_contents.map(&:contentable)
  end

  def show
  end

  private
  def set_all_questions
    @questions = current_user.group.questions
  end
end
