# frozen_string_literal: true
require 'spec_helper'

feature 'Users' do
  background do
    1.upto(100) {|i| User.create! :name => "user#{'%03d' % i}" }
  end
  scenario 'Basic API pagination' do
    visit '/users'

    JSON.parse(page.body).should == 1.upto(25).map {|i| "user#{'%03d' % i}" }
  end
end
