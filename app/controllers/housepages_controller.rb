class HousepagesController < ApplicationController
  layout 'housetheme'
  before_action :authenticate_user!
  def index
    @houses = House.all
  end

  def show
    @house = House.find_by(id: params[:id])
    @house_bios = HouseBio.where(house_id: @house.id)
    @house_images = HouseImage.where(house_id: @house.id)
    @house_stories = HouseStory.where(house_id: @house.id)
    @house_badge = HouseBadge.where(house_id: @house.id)
    @honor = 0
    @house.users.each do |user|
      @honor += user.honor
    end
    @sort_users = @house.users.sort {|a,b| a.honor <=> b.honor}
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
end
