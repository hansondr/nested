class JobApplicationsController < ApplicationController
  def index
    @job_applications = JobApplication.all.group(:career_id)
  end

  def show
    @job_application = JobApplication.find(params[:id])
  end

  def new
    @job_application = career.job_applications.new
    3.times { @job_application.previous_jobs.new }
  end

  def create
    @job_application = career.job_applications.new(job_application_params)
    if @job_application.save 
      redirect_to careers_path
    else
      render :new
    end
  end

  def destroy
    JobApplication.destroy(params[:id])
    redirect_to job_applications_path
  end

  private

  def career
    Career.find(params[:career_id])
  end

  def job_application_params
    params.require(:job_application).
           permit(:full_name,
                  :email,
                  previous_jobs_attributes: [:title,
                                             :start_on,
                                             :leave_on,
                                             :leave_reason])
  end
end
