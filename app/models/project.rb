class Project < ActiveRecord::Base
  belongs_to :user
  has_many :estimates
  
  validates :name, presence: true
	validates :description, presence: true
	validates :video, presence: true
	validates :status, presence: true
  validates :category, presence: true
  validates :urgency, presence: true
  
end
