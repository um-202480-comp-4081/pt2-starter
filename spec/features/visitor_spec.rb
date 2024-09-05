# frozen_string_literal: true

require 'rails_helper'

RSpec.feature 'Visitor Features' do
  feature 'Feel Welcomed' do
    scenario 'Viewing the welcome page content' do
      visit welcome_path

      expect(page).to have_css('h1')
      expect(page).to have_link('About Me')
    end

    scenario 'Redirecting from the root page to the welcome page' do
      visit root_path

      expect(page).to have_current_path(welcome_path, ignore_query: true)
    end
  end

  feature 'Learn About the Creator' do
    scenario "Viewing the creator's information page" do
      visit me_path

      expect(page).to have_css('h1')
      expect(page).to have_css('p')
      expect(page).to have_css('ul', count: 1)
      expect(page).to have_css('ul li', count: 3)
      expect(page).to have_css('img')
      expect(page).to have_link('Back')
    end

    scenario 'Navigating to the me page from the welcome page' do
      visit welcome_path
      click_on 'About Me'

      expect(page).to have_current_path(me_path, ignore_query: true)
    end

    scenario 'Navigating back to the welcome page from the me page' do
      visit me_path
      click_on 'Back'

      expect(page).to have_current_path(welcome_path, ignore_query: true)
    end
  end
end
