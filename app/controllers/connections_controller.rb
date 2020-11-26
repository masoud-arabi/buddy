class ConnectionsController < ApplicationController
  def match_priorities_jobs?(priority_job_search, job_title)
    priority_job_search == job_title
  end

  def index
    user = current_user
    @connections = []
    user.connections.each do |connection|
      connection.contact.company.jobs.each do |job|
        user.priorities.each do |priority|
          if match_priorities_jobs?(priority.job_search, job.title)
            @connections << connection
          end
        end
      end
    end
    @connections
  end
end
