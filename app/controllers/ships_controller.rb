class ShipsController < ApplicationController
  before_action :authenticate_user!

  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find(params[:id])
  end

  def new
    @ship = Ship.new
  end

  def edit
    @ship = Ship.find(params[:id])
  end

  # POST /ships
# POST /ships.json
def create
  @ship = current_user.ships.new(ship_params)
    if @ship.save
      redirect_to ship_path(@ship), notice: 'ship was successfully created.'
    else
      render 'new'
    end
end
# PATCH/PUT /ships/1
# PATCH/PUT /ships/1.json
def update
  @ship = Ship.find(params[:id])
    if @ship.update(ship_params)
      redirect_to ship_path(@ship), notice: 'ship was successfully updated.'
    else
      render 'edit'
    end
end

# DELETE /ships/1
# DELETE /ships/1.json
def destroy
  @ship = Ship.find(params[:id])
  @ship.destroy
 redirect_to root_path, notice: 'ship was successfully destroyed.'
end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def ship_params
    params.require(:ship).permit(:name, :containers, :location, :user_id, :shippic)
  end
end
