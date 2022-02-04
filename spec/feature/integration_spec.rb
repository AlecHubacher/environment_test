# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'JK'
    fill_in 'Author', with: 'Rick Riordan'
    fill_in 'Price', with: '20'
    fill_in 'Published date', with: '2013-10-17'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('JK')
    expect(page).to have_content('Rick Riordan')
    expect(page).to have_content('20')
    expect(page).to have_content('2013-10-17')


  end
end

