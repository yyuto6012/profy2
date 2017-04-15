class TopController < ApplicationController
before_action :authenticate_user!, :only => [:show, :index]
  def index
    @question = Question.new
  end

  def show
  end
end
