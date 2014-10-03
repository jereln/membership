require 'test_helper'

feature 'removing a person' do
  scenario 'removing a person from a group should work' do
    visit group_path(people(:one))
    first(:link, 'Remove from group').click
    visit group_path(people(:one))
    page.wont_have_content 'Robin - MyString'
    page.must_have_content 'Batman - MyString'
  end
end
