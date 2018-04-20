class ApplicationController < ApplicationController
  def index
    @jobs = Job.all
  end
end
