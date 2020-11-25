class Connection < ApplicationRecord
  belongs_to :user
  belongs_to :contact

  def user_connected?()
  end
end
