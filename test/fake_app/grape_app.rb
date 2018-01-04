# frozen_string_literal: true

require 'fake_app/active_record/models'

class GrapeApp < ::Grape::API
  get '/users' do
    User.page(params[:page]).map(&:name).to_json
  end
end
