class Api::V1::AnswersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    answer = Answer.new(
      content: params[:answer_content],
      question_id: params[:question_id],
      user_id: current_user.id
    )

    if answer.save
      @question = answer.question
      render 'create'
    else
      render json: { error: "Comment can't be blank" }, status: 422
    end
  end

end
