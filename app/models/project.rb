class Project < ActiveRecord::Base
  belongs_to :user
  has_many :estimates
  has_one :accepted_estimate, class_name: 'Estimate'
  
  mount_uploader :video, ProjectFileUploader
  
  validates :name, presence: true
	validates :description, presence: true
	validates :video, presence: true
	validates :status, presence: true
  validates :category, presence: true
  
end
