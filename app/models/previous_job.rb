class PreviousJob < ActiveRecord::Base
  belongs_to :job_application

  validates :title, presence: true
end
