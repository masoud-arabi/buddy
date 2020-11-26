class ConnectionsController < ApplicationController
  def index
    user = current_user
    @connections = []
    user.connections.each do |connection|
      connection.contact.company.jobs.each do |job|
        user.priorities.each do |priority|
          if priority.job_search == job.title
            @connections << connection
          end
        end
      end
    end
    @connections
  end
end
