class Company < ApplicationRecord
  has_many :contacts, dependent: :destroy
  has_many :jobs, dependent: :destroy
end
