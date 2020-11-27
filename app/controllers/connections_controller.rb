class ConnectionsController < ApplicationController
  def match_priorities_jobs?(priority_job_search, job_title)
    priority_job_search == job_title
  end

  def index
    user = current_user
    @connections = []
    user.connections.each do |connection|
      user.priorities.each do |priority|
        connection.contact.company.jobs.each do |job|
          if match_priorities_jobs?(priority.job_search, job.title)
            @connections << connection.contact
          end
        end
      end
    end
    @connections
  end
end
