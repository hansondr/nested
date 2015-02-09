class CreateCareers < ActiveRecord::Migration
  def change
    create_table :careers do |t|
      t.string :title, null: false
      t.string :location, null: false
      t.text :description, null: false

      t.timestamps null: false
    end
  end
end
