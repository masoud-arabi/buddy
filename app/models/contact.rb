class Contact < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :company
  has_many :connections
end
