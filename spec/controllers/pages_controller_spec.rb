# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PagesController do
  describe 'GET #welcome' do
    it 'returns a success response' do
      get :welcome
      expect(response).to be_successful
    end

    it 'renders the welcome template' do
      get :welcome
      expect(response).to render_template(:welcome)
    end
  end

  describe 'GET #me' do
    it 'returns a success response' do
      get :me
      expect(response).to be_successful
    end

    it 'renders the me template' do
      get :me
      expect(response).to render_template(:me)
    end
  end
end
