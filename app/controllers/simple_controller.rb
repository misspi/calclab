class SimpleController < ApplicationController
  layout 'calclab'

  Calclab.actions {|action| caches_page action  }

  def index
    redirect_to :action => 'calclab'
  end

end
