class UsrinterfacesController < ApplicationController
  layout 'usertheme'
  before_action :authenticate_user!
  def index
    @users = User.all

  end

  def show
    @user = current_user
    @related_questions = []
    @user.answers.each do |answer|
      @related_questions << answer.question.id
    end
    @question_ids = []
    @question_ids << @related_questions[0]
    @related_questions.each do |repeat_id|
      @question_ids.each do |single_id|
       if !@question_ids.include?(repeat_id)
         @question_ids << repeat_id
       end
      end
    end
    @answered_questions = []
    @question_ids.each do |id|
      @answered_questions << Question.find_by(id: id)
    end
  end

  def setting
    @user = current_user
  end
end
