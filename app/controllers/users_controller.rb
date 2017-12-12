class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

def show
  @ships = User.find_by(params[:id]).ships
end




private

def set_user
  @user = User.find_by(params[:id])
end

def user_params
  params.require(:id).permit(:id, :ship_id)
end




end
