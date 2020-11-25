class ContactsController < ApplicationController
  def index
    all_contacts = Contact.all
    user = current_user
    @contacts = []
    all_contacts.each do |contact|
      if contact.user_id != nil
        @contacts << contact
      end
    end
    @contacts
  end
end
