class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end

  def show
    @story = Story.find_by(id: params[:id])
  end

  def new
    render "new"
  end

  def create
    @story = Story.new(
      content: params[:content],
      image: params[:image],
      title: params[:title]
    )
    if @story.save
      flash[:success] = "You have created a story!"
      redirect_to "/stories/#{@story.id}"
    else
      flash[:danger] = "Oh no, you should not have this message shown up right now! "
      redirect_to "/stories/new"
    end
  end

  def edit
    @story = Story.find_by(id: params[:id])
    render "edit"
  end

  def update
    @story = Story.find_by(id: params[:id])
    @story.update(
      content: params[:content],
      image: params[:image],
      title: params[:title]
    )
    redirect_to "/stories/#{@story.id}"
  end

  def destroy
    @story = Story.find_by(id: params[:id])
    @story.destroy
    redirect_to "/stories"
  end
end
