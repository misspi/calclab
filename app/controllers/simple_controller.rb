class SimpleController < ApplicationController
  layout 'calclab'

  def index
    redirect_to :action => 'services'
  end

  def services
  end

  def opensource
  end

  def jobs
  end

  def research
  end
end
