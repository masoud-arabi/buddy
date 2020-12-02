class IdeasController < ApplicationController

  def match_priorities_jobs?(priority_job_search, job_title)
    priority_job_search == job_title
  end

  def map
    @companies = Company.all
    @user = current_user
    jobs = Job.all
    @jobs_priorities = []
    @user.priorities.each do |priority|
      jobs.each do |job|
        if match_priorities_jobs?(priority.job_search, job.title)
          @jobs_priorities.push(job)
        end
      end
    end
    @jobs_priorities
  end
end
