class QuestionsController < ApplicationController
  layout 'questionstheme'
  before_action :authenticate_user!
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find_by(id: params[:id])
    @answers = Answer.where(question_id: params[:id])
  end

  def new
    render "new"
  end

  def create
    @question = Question.new(
      content: params[:content],
      user_id: params[:user_id]
    )
    if @question.save
      flash[:success] = "You have created a feed!"
      redirect_to "/questions/#{@question.id}"
    else
      flash[:danger] = "Oh no, you should not have this message shown up right now! "
      redirect_to "/questions/new"
    end
  end

  def edit
    @question = Question.find_by(id: params[:id])
    render "edit"
  end

  def update
    @question = Question.find_by(id: params[:id])
    @question.update(
      content: params[:content],
      user_id: params[:user_id]
    )
    redirect_to "/questions/#{@question.id}"
  end

  def destroy
    @question = Question.find_by(id: params[:id])
    @question.destroy
    redirect_to "/questions"
  end

  def hot
    @questions = Question.all
    @questions = @questions.sort { |a,b| b.answers.size <=> a.answers.size }
  end

  def filternew
    @questions = Question.all
    @questions = @questions.sort { |a,b| b.created_at <=> a.created_at }
  end
end
