class SimpleController < ApplicationController
  layout 'calclab'

  def index
    redirect_to :action => 'calclab'
  end

end
