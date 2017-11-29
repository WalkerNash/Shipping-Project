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

  # POST /comments
# POST /comments.json
def create
  find_params
  @ship = current_user.ships.new(comment_params)
    if @ship.save
      redirect_to ship_path(@ship), notice: 'Comment was successfully created.'
    else
      render 'new'
    end
end
# PATCH/PUT /comments/1
# PATCH/PUT /comments/1.json
def update
  @ship = Ship.find(params[:id])
    if @ship.update(ship_params)
      redirect_to ship_path(@ship), notice: 'Comment was successfully updated.'
    else
      render 'edit'
    end
end

# DELETE /comments/1
# DELETE /comments/1.json
def destroy
  @ship = Ship.find(params[:id])
  @ship.destroy
 redirect_to root_path, notice: 'Comment was successfully destroyed.'
end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def comment_params
    params.require(:ship).permit(:name, :containers, :location, :job_id)
  end
end
