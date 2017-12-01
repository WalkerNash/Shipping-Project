class JobsController < ApplicationController
before_action :authenticate_user!

  def index
    @jobs = Job.all
    @ships = Ship.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def edit
    @job = Job.find(params[:id])
  end

  # POST /comments
# POST /comments.json
def create
  @job = Job.new(job_params)
    if @job.save
      redirect_to job_path(@job), notice: 'Comment was successfully created.'
    else
      render 'new'
    end
end
# PATCH/PUT /comments/1
# PATCH/PUT /comments/1.json
def update
  @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to job_path(@job), notice: 'Comment was successfully updated.'
    else
      render 'edit'
    end
end

# DELETE /comments/1
# DELETE /comments/1.json
def destroy
  @job = Job.find(params[:id])
  @job.destroy
 redirect_to root_path, notice: 'Comment was successfully destroyed.'
end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def job_params
    params.require(:job).permit(:description, :origin, :destination, :cost, :containers, :ship_id)
  end
end
