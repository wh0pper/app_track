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

  def update
    Step.find(params[:id]).update(:status => true) #true is "done"
  end

private
  def step_params
    params.require(:step).permit(:description, :notes, :due_date, :priority)
  end
end
