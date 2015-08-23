class Contractor < ActiveRecord::Base
  has_many :estimates
  has_many :projects, :through => :estimates
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  
end
