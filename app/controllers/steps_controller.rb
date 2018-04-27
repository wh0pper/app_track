class StepsController < ApplicationController
  def new
    @job = Job.find(params[:job_id])
    @new_step = Step.new
  end

  def create
    @job = Job.find(params[:job_id])
    @new_step = @job.steps.new(step_params)
    if @new_step.save!
      flash[:notice] = "Step successfully added."
      redirect_to job_path(@job)
    else
      flash[:alert] = "There was an error adding this step."
      render :new
    end
  end

  def update
    # binding.pry
    Step.update(params[:id], :status => true) #true is "done"
    redirect_to job_path(Job.find(params[:job_id]))
  end

private
  def step_params
    params.require(:step).permit(:description, :notes, :due_date, :priority)
  end
end
