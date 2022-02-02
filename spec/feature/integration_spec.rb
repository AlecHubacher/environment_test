# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSPEC.describe 'Creating an author', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Author', with: 'J.K Rowling'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('J.K Rowling')
  end
end

RSPEC.describe 'Creating a Price', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Price', with: '20'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('20')
  end
end

RSPEC.describe 'Creating a Date', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    select '2', :from => '2'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('2')
  end
end