class Contact < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :company
  has_many :connections, dependent: :destroy

  def is_a_user?
    !self.user_id.nil?
  end
end
