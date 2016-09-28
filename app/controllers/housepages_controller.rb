class HousepagesController < ApplicationController
  layout 'housetheme'
  before_action :authenticate_user!
  def index
    @houses = House.all
    @houses.each do |house|
      total_honor = 0
      house.users.each do |user|
        total_honor += user.honor
      end
      house.update(honor: total_honor)
    end
    @houses = @houses.sort{|a,b| b.honor  <=> a.honor}
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
    @sort_users = @house.users.sort {|a,b| b.honor <=> a.honor}
    @sort_users = @sort_users.take(3)
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
