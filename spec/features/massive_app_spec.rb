require 'spec_helper'

feature 'User can manage so many things (animals)' do

  scenario 'User is welcomed to massive app' do
    visit '/'
    expect(page).to have_content('Welcome to Massive App')
  end

  scenario 'User can add animals to a list and see them on the animals page' do
    visit '/animals'
    click_on 'Add animal'
    name = 'vampire bat'
    diet = 'blood'
    fill_in 'Name', with: name
    fill_in 'Diet', with: diet
    click_on 'Add'
    expect(page).to have_content(name)
    expect(page).to have_content(diet)
  end
end
