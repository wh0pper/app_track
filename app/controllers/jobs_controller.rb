class JobsController < ApplicationController
  def index
    if current_user
      @jobs = current_user.jobs
      @new_job = Job.new
    else
      redirect_to :new_user_registration
    end
  end

  def show
    @job = Job.find(params[:id])
    @complete_steps = @job.steps.where(status: true)
    @incomplete_steps = @job.steps.where(status: false)
  end

  def new
    @new_job = Job.new
  end

  def create
    @new_job_to_save = current_user.jobs.new(job_params)
    if @new_job_to_save.save!
      redirect_to jobs_path
    else
      render :new
    end
  end

  def destroy
    Job.find(params[:id]).destroy
    redirect_to jobs_path
  end

  def filter
    # binding.pry
    @new_job = Job.new
    case params[:format]
    when "most"
      @jobs = Job.most_steps(current_user)
    when "fewest"
      @jobs = Job.fewest_steps(current_user)
    when "recent"
      @jobs = Job.most_recent(current_user)
    end
    render :index
  end

private
  def job_params
    params.require(:job).permit(:title, :company, :post_date, :rating, :location, :url)
  end
end
