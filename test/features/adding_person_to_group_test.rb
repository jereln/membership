require 'test_helper'

feature 'adding a person' do
  scenario 'adding a person to a group should work' do
    visit group_path(people(:one))
    select 'Catwoman', from: 'member_person_id'
    click_on 'Add Member'
    visit group_path(people(:one))
    page.must_have_content 'Catwoman'
  end
end
