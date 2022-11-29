class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  validates :location, presence: true
  validates :date, presence: true
end
