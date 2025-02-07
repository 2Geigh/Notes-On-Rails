json.extract! person, :id, :relationship, :first_name, :middle_name, :last_name, :birth_month, :birth_day_of_month, :birth_year, :age, :date_of_last_meetup, :time_since_last_meetup, :date_of_last_communication, :time_since_last_communication, :created_at, :updated_at
json.url person_url(person, format: :json)
