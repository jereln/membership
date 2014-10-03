require 'test_helper'

feature 'viewing a person' do
  scenario 'a persons page should show all groups they are in' do
    visit people_path(people(:one))
    page.must_have_content 'Batman'
    page.must_have_content 'Robin'
  end
end
