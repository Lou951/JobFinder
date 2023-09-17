class CreateVacancies < ActiveRecord::Migration[7.0]
  def change
    create_table :vacancies do |t|
      t.string :job_title
      t.text :job_description
      t.string :job_location
      t.integer :job_salary
      t.date :advertise_start_date
      t.date :advertise_end_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
