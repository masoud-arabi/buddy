class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sender_conversations, class_name: 'Conversation', foreign_key: 'sender_id', dependent: :destroy
  has_many :receiver_conversations, class_name: 'Conversation', foreign_key: 'receiver_id', dependent: :destroy
  has_many :connections
<<<<<<< HEAD
  has_many :messages, dependent: :destroy

  def conversations
    sender_conversations.or(receiver_conversations)
  end
=======
  has_many :priorities
>>>>>>> 9feafa16790f2f073ffc818e04517b54be4b48c9
end
