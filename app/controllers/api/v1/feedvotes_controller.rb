class Api::V1::FeedvotesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    if params[:favorite] == 1
      FeedVote.create(user_id: current_user.id, feed_id: params[:feed_id])
      current_user.update(honor: current_user.honor + 2)
      render json: {success: "feed favorited!"}
    else
      vote = FeedVote.find_by(user_id: current_user.id, feed_id: params[:feed_id])
      vote.destroy
      current_user.update(honor: current_user.honor - 2)
      render json: {success: "feed removed from favorites!"}
    end
  end

  def upvotecreate
    if params[:upvote] == 1
      Upvote.create(user_id: current_user.id, answer_id: params[:answer_id])
      current_user.update(honor: current_user.honor + 2)
      render json: {success: "upvote favorited!"}
    else
      vote = Upvote.find_by(user_id: current_user.id, answer_id: params[:answer_id])
      vote.destroy
      current_user.update(honor: current_user.honor - 2)
      render json: {success: "upvote removed from votes!"}
    end
  end

  def downvotecreate
    if params[:downvote] == 1
      Downvote.create(user_id: current_user.id, answer_id: params[:answer_id])
      current_user.update(honor: current_user.honor + 2)
      render json: {success: "upvote favorited!"}
    else
      vote = Downvote.find_by(user_id: current_user.id, answer_id: params[:answer_id])
      vote.destroy
      current_user.update(honor: current_user.honor - 2)
      render json: {success: "upvote removed from votes!"}
    end
  end
end
