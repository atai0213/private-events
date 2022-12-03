class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"

  has_many :assignments, foreign_key: "attended_event_id"  
  has_many :attendees, through: :assignments, source: :attendee

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :location, presence: true
  validates :date, presence: true

  scope :future, -> {where('date > ?', Date.today)}
  scope :past, -> {where('date < ?', Date.today)}
end
