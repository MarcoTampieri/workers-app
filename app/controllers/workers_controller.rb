class WorkersController < ApplicationController

  before_action :current_worker, only: [:show, :edit, :update, :destroy]

  def index
    @workers = Worker.all
  end

  def show
  end

  def new
    @worker = Worker.new
  end

  def create
    @worker = Worker.create(worker_params)
    redirect_to workers_path
  end

  def edit
  end

  def update
    @worker.update(worker_params)
    redirect_to workers_path
  end

  def destroy
    @worker.destroy
    redirect_to workers_path
  end

  private

  def worker_params
    params.require(:worker).permit(:name, :company, :position)
  end

  def current_worker
    @worker = Worker.find(params[:id])
  end

end
