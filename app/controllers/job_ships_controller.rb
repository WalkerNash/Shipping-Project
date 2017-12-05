class JobShipsController < ApplicationController
  before_action :authenticate_user!
  # GET /job_ships
  # GET /job_ships.json
  def index
    @job_ships = JobShip.all
  end

  # GET /job_ships/1
  # GET /job_ships/1.json
  def show
    @job_ship = JobShip.find(params[:id])
  end

  # GET /job_ships/new
  def new
    @job_ship = JobShip.new
  end

  # GET /job_ships/1/edit
  def edit
    @job_ship = JobShip.find(params[:id])
  end

  # POST /job_ships
  # POST /job_ships.json
  def create
    @job_ship = JobShip.new(job_ship_params)
      if @job_ship.save
        redirect_to @job_ship, notice: 'Job ship was successfully created.'
      else
        render 'new' 
      end
    end
  end

  # PATCH/PUT /job_ships/1
  # PATCH/PUT /job_ships/1.json
  def update
      if @job_ship.update(job_ship_params)
        redirect_to @job_ship, notice: 'Job ship was successfully updated.'
      else
        render 'edit'
      end
  end

  # DELETE /job_ships/1
  # DELETE /job_ships/1.json
  def destroy
    @job_ship.destroy
    redirect_to job_ships_url, notice: 'Job ship was successfully destroyed.'
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def job_ship_params
      params.require(:ship).permit(:ship_id, :job_id, :user_id)
    end
end
