class Event < ActiveRecord::Base
  belongs_to :conference
  has_many :sessions

  validates :name, presence: true
  validates :conference, presence: true
  validates :date, presence: true

  attr_readonly :conference_id

  def full_name
    "#{conference.name} #{name}"
  end
end
