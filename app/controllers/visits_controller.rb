class VisitsController < ApplicationController
  before_action :authenticate_user!

  def index
    @visits = Visit.order('created_at DESC')
  end
end
