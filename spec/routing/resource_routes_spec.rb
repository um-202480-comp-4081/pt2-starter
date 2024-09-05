# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Routes follow resource naming' do
  context 'when routing' do
    specify 'Pages welcome' do
      expect(get: welcome_path).to route_to 'pages#welcome'
    end

    specify 'Pages me' do
      expect(get: me_path).to route_to 'pages#me'
    end
  end

  context 'when creating path helpers' do
    specify 'welcome_path' do
      expect(welcome_path).to eq '/welcome'
    end

    specify 'me_path' do
      expect(me_path).to eq '/me'
    end
  end
end
