class Api::V1::QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by(id: params[:id])
    @currentanswersup = []
    current_user.upvotes.each do |vote|
      @currentanswersup << vote.answer
    end
    @currentanswersdown = []
    current_user.downvotes.each do |vote|
      @currentanswersdown << vote.answer
    end
  end
end
