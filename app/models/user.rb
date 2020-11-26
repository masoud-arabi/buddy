class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sender_users, class_name: 'Message', foreign_key: 'sender_user_id'
  has_many :receiver_users, class_name: 'Message', foreign_key: 'receiver_user_id'
  has_many :connections, dependent: :destroy
  has_many :priorities, dependent: :destroy
  has_many :contacts
  has_one_attached :photo

  def match_priority_to_job(job_title)
    self.priorities.each do |priority|
      if job_title == priority.job_search
        return priority.position
      end
    end
    return false
  end
end
