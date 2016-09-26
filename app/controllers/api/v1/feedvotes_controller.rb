class Api::V1::FeedvotesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if params[:favorite] == 1
      FeedVote.create(user_id: current_user.id, feed_id: params[:feed_id])
      render json: {success: "feed favorited!"}
    else
      vote = FeedVote.find_by(user_id: current_user.id, feed_id: params[:feed_id])
      vote.destroy
      render json: {success: "vote removed from favorites!"}
    end
  end

  def upvotecreate
    if params[:favorite] == 1
      FeedVote.create(user_id: current_user.id, feed_id: params[:feed_id])
      render json: {success: "feed favorited!"}
    else
      vote = FeedVote.find_by(user_id: current_user.id, feed_id: params[:feed_id])
      vote.destroy
      render json: {success: "vote removed from favorites!"}
    end
  end

  def create
    if params[:favorite] == 1
      FeedVote.create(user_id: current_user.id, feed_id: params[:feed_id])
      render json: {success: "feed favorited!"}
    else
      vote = FeedVote.find_by(user_id: current_user.id, feed_id: params[:feed_id])
      vote.destroy
      render json: {success: "vote removed from favorites!"}
    end
  end
end
