class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sender_conversations, class_name: 'Conversation', foreign_key: 'sender_id', dependent: :destroy
  has_many :receiver_conversations, class_name: 'Conversation', foreign_key: 'receiver_id', dependent: :destroy
  has_many :connections, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :priorities, dependent: :destroy
  has_many :contacts
  has_one_attached :photo

  def conversations
    sender_conversations.or(receiver_conversations)
  end

  def match_priority_to_job(job)
    self.priorities.each do |priority|
      condition_job_search = job.title.downcase.include?(priority.job_search.downcase) && priority.job_search.downcase != ""
      if priority.industry != ""
        condition_industry_search = (job.company.industry.downcase == priority.industry.downcase)
      else
        condition_industry_search = true
      end
      if priority.location != ""
        condition_location_search = (job.company.address.downcase.include?(priority.location.downcase))
      else
        condition_location_search = true
      end
      if condition_job_search && condition_industry_search && condition_location_search
        return priority.position
      end
    end
    return false
  end

  def matches_at_least_one_job(jobs)
    jobs.each do |job|
      self.priorities.each do |priority|
        return true if job.title.downcase.include?(priority.job_search.downcase) && priority.job_search.downcase != ""
      end
    end
    return false
  end
end
