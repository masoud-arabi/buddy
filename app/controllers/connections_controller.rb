class ConnectionsController < ApplicationController

  def index
    user = current_user
    @connections = []
    user.connections.each do |connection|
      user.priorities.each do |priority|
        connection.contact.company.jobs.each do |job|
          if user.match_priority_to_job(job)
            @connections << connection.contact
          end
        end
      end
    end
    @connections
  end
end
