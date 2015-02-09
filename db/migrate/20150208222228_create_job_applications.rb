class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.references :career, index: true
      t.string :full_name, null: false
      t.string :email, null: false

      t.timestamps null: false
    end
    add_foreign_key :job_applications, :careers
  end
end
