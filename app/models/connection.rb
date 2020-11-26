class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :contact

  def match_priorities_jobs?(priority_job_search, job_title)
    priority_job_search == job_title
  end
end
