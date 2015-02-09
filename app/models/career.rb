class Career < ActiveRecord::Base
  has_many :job_applications

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
end
