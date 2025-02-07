require "application_system_test_case"

class PeopleTest < ApplicationSystemTestCase
  setup do
    @person = people(:one)
  end

  test "visiting the index" do
    visit people_url
    assert_selector "h1", text: "People"
  end

  test "should create person" do
    visit people_url
    click_on "New person"

    fill_in "Age", with: @person.age
    fill_in "Birth day of month", with: @person.birth_day_of_month
    fill_in "Birth month", with: @person.birth_month
    fill_in "Birth year", with: @person.birth_year
    fill_in "Date of last communication", with: @person.date_of_last_communication
    fill_in "Date of last meetup", with: @person.date_of_last_meetup
    fill_in "First name", with: @person.first_name
    fill_in "Last name", with: @person.last_name
    fill_in "Middle name", with: @person.middle_name
    fill_in "Relationship", with: @person.relationship
    fill_in "Time since last communication", with: @person.time_since_last_communication
    fill_in "Time since last meetup", with: @person.time_since_last_meetup
    click_on "Create Person"

    assert_text "Person was successfully created"
    click_on "Back"
  end

  test "should update Person" do
    visit person_url(@person)
    click_on "Edit this person", match: :first

    fill_in "Age", with: @person.age
    fill_in "Birth day of month", with: @person.birth_day_of_month
    fill_in "Birth month", with: @person.birth_month
    fill_in "Birth year", with: @person.birth_year
    fill_in "Date of last communication", with: @person.date_of_last_communication.to_s
    fill_in "Date of last meetup", with: @person.date_of_last_meetup.to_s
    fill_in "First name", with: @person.first_name
    fill_in "Last name", with: @person.last_name
    fill_in "Middle name", with: @person.middle_name
    fill_in "Relationship", with: @person.relationship
    fill_in "Time since last communication", with: @person.time_since_last_communication
    fill_in "Time since last meetup", with: @person.time_since_last_meetup
    click_on "Update Person"

    assert_text "Person was successfully updated"
    click_on "Back"
  end

  test "should destroy Person" do
    visit person_url(@person)
    click_on "Destroy this person", match: :first

    assert_text "Person was successfully destroyed"
  end
end
