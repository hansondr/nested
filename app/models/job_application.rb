class JobApplication < ActiveRecord::Base
  belongs_to :career
  has_many :previous_jobs
  accepts_nested_attributes_for :previous_jobs

  validates :full_name, presence: true
  validates :email, presence: true
end
