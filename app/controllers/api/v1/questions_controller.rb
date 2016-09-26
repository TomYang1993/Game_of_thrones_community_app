class Api::V1::QuestionsController < ApplicationController
  def index
    @questions = Question.all

  end

  def show
    @question = Question.find_by(id: params[:id])
  end

end
