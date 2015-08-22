class Estimate < ActiveRecord::Base
  belongs_to :contractor
  belongs_to :project
end
