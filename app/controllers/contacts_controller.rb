class ContactsController < ApplicationController
  def index
    all_contacts = Contact.all
    user = current_user
    @contacts = []
    all_contacts.each do |contact|
      contact.company.jobs.each do |job|
        user.priorities.each do |priority|
          if priority.job_search == job.title
            @contacts << contact
          end
        end
      end
    end
    @contacts
  end
end
