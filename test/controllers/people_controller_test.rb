require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference("Person.count") do
      post people_url, params: { person: { age: @person.age, birth_day_of_month: @person.birth_day_of_month, birth_month: @person.birth_month, birth_year: @person.birth_year, date_of_last_communication: @person.date_of_last_communication, date_of_last_meetup: @person.date_of_last_meetup, first_name: @person.first_name, last_name: @person.last_name, middle_name: @person.middle_name, relationship: @person.relationship, time_since_last_communication: @person.time_since_last_communication, time_since_last_meetup: @person.time_since_last_meetup } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { age: @person.age, birth_day_of_month: @person.birth_day_of_month, birth_month: @person.birth_month, birth_year: @person.birth_year, date_of_last_communication: @person.date_of_last_communication, date_of_last_meetup: @person.date_of_last_meetup, first_name: @person.first_name, last_name: @person.last_name, middle_name: @person.middle_name, relationship: @person.relationship, time_since_last_communication: @person.time_since_last_communication, time_since_last_meetup: @person.time_since_last_meetup } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference("Person.count", -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end
