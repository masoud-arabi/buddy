class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sender_users, class_name: 'Message', foreign_key: 'sender_user_id'
  has_many :receiver_users, class_name: 'Message', foreign_key: 'receiver_user_id'
  has_many :connections
end
