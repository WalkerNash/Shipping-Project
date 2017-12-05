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

    respond_to do |format|
      if @job_ship.save
        format.html { redirect_to @job_ship, notice: 'Job ship was successfully created.' }
        format.json { render :show, status: :created, location: @job_ship }
      else
        format.html { render :new }
        format.json { render json: @job_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_ships/1
  # PATCH/PUT /job_ships/1.json
  def update
    respond_to do |format|
      if @job_ship.update(job_ship_params)
        format.html { redirect_to @job_ship, notice: 'Job ship was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_ship }
      else
        format.html { render :edit }
        format.json { render json: @job_ship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_ships/1
  # DELETE /job_ships/1.json
  def destroy
    @job_ship.destroy
    respond_to do |format|
      format.html { redirect_to job_ships_url, notice: 'Job ship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def job_ship_params
      params.require(:ship).permit(:ship_id, :job_id, :user_id)
    end
end
