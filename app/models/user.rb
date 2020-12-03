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


  def match_priority_to_job(job_title)
    self.priorities.each do |priority|
      if job_title.downcase.include?(priority.job_search.downcase)
        return priority.position
      end
    end
    return false
  end

  def matches_at_least_one_job(jobs)
    jobs.each do |job|
      self.priorities.each do |priority|
        return true if priority.job_search == job.title
      end
    end
    return false
  end
end
