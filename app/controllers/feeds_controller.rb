class FeedsController < ApplicationController
  layout 'feedstheme'
  before_action :authenticate_user!
  def index
    url = "http://www.makinggameofthrones.com/production-diary?format=RSS"
    @outsidefeeds = Feedjira::Feed.fetch_and_parse url
    @feeds = Feed.all
  end

  def show
    url = "http://www.makinggameofthrones.com/production-diary?format=RSS"
    @outsidefeeds = Feedjira::Feed.fetch_and_parse url
    @feed = Feed.find_by(id: params[:id])
  end

  def new
    render "new"
  end

  def create
    @feed = Feed.new(
      image: params[:image],
      content: params[:content],
      vote_number: params[:vote_number]
    )
    if @feed.save
      flash[:success] = "You have created a feed!"
      redirect_to "/feeds/#{@feed.id}"
    else
      flash[:danger] = "Oh no, you should not have this message shown up right now! "
      redirect_to "/feeds/new"
    end
  end

  def edit
    @feed = Feed.find_by(id: params[:id])
    render "edit"
  end

  def update
    @feed = Feed.find_by(id: params[:id])
    @feed.update(
      image: params[:image],
      content: params[:content],
      vote_number: params[:vote_number]
    )
    redirect_to "/feeds/#{@feed.id}"
  end

  def destroy
    @feed = Feed.find_by(id: params[:id])
    @feed.destroy
    redirect_to "/feeds"
  end
end
