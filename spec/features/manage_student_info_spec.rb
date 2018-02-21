require 'rails_helper'

RSpec.describe 'managing user information', :type => :feature do

  it 'shows all users on the home page' do
    #   run 'rspec' in the console to get started
    given_the_database_is_empty
    given_there_are_two_users_created_in_the_database
    
    given_i_am_on_the_homepage


  end

end
