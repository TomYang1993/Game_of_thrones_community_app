class HomesController < ApplicationController
  layout 'indextheme'
  def index
    @houses = House.all

  end


end
