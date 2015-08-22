class Project < ActiveRecord::Base
  belongs_to :user
  has_many :estimates
  
  mount_uploader :video, ProjectFileUploader
  
  validates :name, presence: true
	validates :description, presence: true
	validates :video, presence: true
	validates :status, presence: true
  validates :category, presence: true
  
end
