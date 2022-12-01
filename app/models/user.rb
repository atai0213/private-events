class User < ApplicationRecord
  has_many :events, foreign_key: "creator_id", class_name: "Event"

  has_many :assignments, foreign_key: "attendee_id"
  has_many :attended_events, through: :assignments, source: :attended_event

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
