class IdeasController < ApplicationController

  def match_priorities_jobs?(priority_job_search, job_title)
    priority_job_search == job_title
  end

  def map
    @user = current_user
  end
end
