class VisitsController < ApplicationController
  before_action :authenticate_user!

  def index
    @visits = Visit.order('created_at DESC').limit(20)
  end
end
