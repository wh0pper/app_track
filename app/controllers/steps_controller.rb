class StepsController < ApplicationController
  def new
    @job = Job.find(params[:job_id])
    @new_step = Step.new
  end

  def create
    @job = Job.find(params[:job_id])
    @new_step = @job.steps.new(step_params)
    if @new_step.save
      redirect_to job_path(@job)
    else
      render :new
    end
  end

private
  def step_params
    params.require(:step).permit(:description, :due_date, :priority)
  end
end
