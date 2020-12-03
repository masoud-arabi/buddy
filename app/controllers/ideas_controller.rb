class IdeasController < ApplicationController

  def match_priorities_jobs?(priority_job_search, job_title)
    job_title.downcase.include?(priority_job_search.downcase)
  end

  def map
    @user = current_user
  end
end
