class Contact < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :company
  has_many :connections

  def is_a_user?
    if self.user_id != nil
      return true
    end
  end
end
