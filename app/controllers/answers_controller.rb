class AnswersController < ApplicationController
  def create
    @answer = Answer.new(
      user_id: params[:user_id],
      question_id: params[:question_id],
      content: params[:content]
    )
    if @answer.save
      flash[:success] = "You have created a feed!"
      redirect_to "/questions/#{@answer.question.id}"
    else
      flash[:danger] = "Oh no, you should not have this message shown up right now! "
      redirect_to "/questions/#{@answer.question.id}"
    end
  end
end
