class HomesController < ApplicationController
  layout 'indextheme'
  skip_before_action :verify_authenticity_token

  def index
    @houses = House.all

  end

  def show
    @houses = House.all
  end

  def update
    @user = current_user
    @house = House.find_by(name: params[:house_name])
    @user.update!(house_id: @house.id)
    redirect_to '/usrinterface'
  end

  def skip
    if !current_user.house
      @user = current_user
      @user.update!(house_id: 9)
    end
    redirect_to '/usrinterface'
  end


end
