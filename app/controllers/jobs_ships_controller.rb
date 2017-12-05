class JobsShipsController < ApplicationController
  before_action :authenticate_user!
  def index
    @ships = current_user.ships
  end

  def show
  end

  def new
  end
end
