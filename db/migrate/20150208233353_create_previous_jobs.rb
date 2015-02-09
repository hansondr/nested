class CreatePreviousJobs < ActiveRecord::Migration
  def change
    create_table :previous_jobs do |t|
      t.references :job_application, index: true
      t.string :title, null: false
      t.date :start_on
      t.date :leave_on
      t.string :leave_reason

      t.timestamps null: false
    end
    add_foreign_key :previous_jobs, :job_applications
  end
end
