class HomesController < ApplicationController
  layout 'indextheme'
  skip_before_action :verify_authenticity_token

  def index
    @houses = House.all

  end

  def show
    @houses = House.all
    @house_choices = []
    @houses.each do |house|
      @house_choices << [house.name, house.id]
    end
  end

  def update
    @user = current_user
    @user.update!(house_id: params[:house_id])
    redirect_to '/usrinterface'
  end

  def skip
    if !current_user.house
      @user = current_user
      @user.update!(house_id: 17)
    end
    redirect_to '/usrinterface'
  end
end
