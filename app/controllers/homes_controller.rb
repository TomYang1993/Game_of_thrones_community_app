class HomesController < ApplicationController
  layout 'indextheme'
  def index
    @houses = House.all

  end

  def show

  end


end
