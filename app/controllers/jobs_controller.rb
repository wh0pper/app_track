class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @new_job = Job.new

  end

  def show
    @job = Job.find(params[:id])
    @steps = @job.steps
  end

  def new
    @new_job = Job.new
  end

  def create
    @new_job_to_save = Job.new(job_params)
    if @new_job_to_save.save
      redirect_to jobs_path
    else
      render :new
    end
  end

  def destroy
    Job.find(params[:id]).destroy
    redirect_to jobs_path
  end

private
  def job_params
    params.require(:job).permit(:title, :company, :post_date, :rating, :location, :url)
  end
end
