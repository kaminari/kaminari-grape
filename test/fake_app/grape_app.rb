# frozen_string_literal: true

ActiveRecord::Base.configurations = {'test' => {'adapter' => 'sqlite3', 'database' => 'kaminari_test.sqlite3'}} if ActiveRecord::Base.configurations.empty?
require 'fake_app/active_record/models'

class GrapeApp < ::Grape::API
  get '/users' do
    User.page(params[:page]).map(&:name).to_json
  end
end
