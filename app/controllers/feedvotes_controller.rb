class FeedvotesController < ApplicationController
  def index
    @feedvotes = FeedVote.all
  end

  def show
    @feedvote = FeedVote.find_by(id: params[:id])
  end

  def new
    render "new"
  end

  def create
    @feedvote = FeedVote.new(
      image: params[:image],
      user_id: params[:user_id],
      feed_id: params[:feed_id]
    )
    if @feedvote.save
      flash[:success] = "You have created a vote!"
      redirect_to "/feedvotes/#{@feedvote.id}"
    else
      flash[:danger] = "Oh no, you should not have this message shown up right now! "
      redirect_to "/feedvotes/new"
    end
  end

  def edit
    @feedvote = FeedVote.find_by(id: params[:id])
    render "edit"
  end

  def update
    @feedvote = FeedVote.find_by(id: params[:id])
    @feedvote.update(
      image: params[:image],
      user_id: params[:user_id],
      feed_id: params[:feed_id]
    )
    redirect_to "/feedvotes/#{@feedvote.id}"
  end

  def destroy
    @feedvote = FeedVote.find_by(id: params[:id])
    @feedvote.destroy
    redirect_to "/feedvotes"
  end
end
