class CreatePeople < ActiveRecord::Migration[8.0]
  def change
    create_table :people do |t|
      t.string :relationship
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :birth_month
      t.integer :birth_day_of_month
      t.integer :birth_year
      t.integer :age
      t.datetime :date_of_last_meetup
      t.integer :time_since_last_meetup
      t.datetime :date_of_last_communication
      t.integer :time_since_last_communication

      t.timestamps
    end
  end
end
