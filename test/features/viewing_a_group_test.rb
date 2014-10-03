require 'test_helper'

feature 'viewing a group' do
  scenario 'a group should show a list of all members' do
    visit groups_path(people(:one))
    page.must_have_content 'Group One'
    page.must_have_content 'Group Two'
  end
end
