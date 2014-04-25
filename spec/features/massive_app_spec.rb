require 'spec_helper'

feature 'User can manage so many things (animals)' do

  scenario 'User is welcomed to massive app' do
    visit '/'
    expect(page).to have_content('Welcome to Massive App')
  end

end
