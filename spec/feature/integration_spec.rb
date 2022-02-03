# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Percy Jackson'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Percy Jackson')

  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'Rick Riordan'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Rick Riordan')

  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: 20
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('20')

  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Published date', with: '2013-08-07'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2013-08-07')

  end
end