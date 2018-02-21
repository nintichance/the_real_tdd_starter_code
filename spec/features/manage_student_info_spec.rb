require 'rails_helper'

RSpec.describe 'managing user information', :type => :feature do

it 'shows all users on the home page' do
  #   run 'rspec' in the console to get started
  given_the_database_is_empty
  given_there_are_two_users_created_in_the_database
  
  given_i_am_on_the_homepage
  when_i_view_the_user_display_area
  then_i_should_see_two_users_on_the_page
  then_i_should_see_the_first_and_last_name_for_each_user

end

def given_the_database_is_empty
  User.destroy_all

end

def given_there_are_two_users_created_in_the_database
  User.create(
    first_name: 'Daniel',
    last_name: 'Pino',
    age: 7
    )
  User.create(
    first_name: 'Ninti',
    last_name: 'Chance',
    age: 24
    )

end

def given_i_am_on_the_homepage
  visit '/users'
end

def when_i_view_the_user_display_area

end

def then_i_should_see_the_first_and_last_name_for_each_user

end

def then_i_should_see_two_users_on_the_page

end

end