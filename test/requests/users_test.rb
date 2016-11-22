# frozen_string_literal: true
require 'test_helper'

class GrapeRequestTest < ActiveSupport::TestCase
  include Capybara::DSL

  setup do
    1.upto(100) {|i| User.create! name: "user#{'%03d' % i}" }
  end
  teardown do
    User.delete_all
  end

  test 'Basic API pagination' do
    visit '/users'

    assert_equal 1.upto(25).map {|i| "user#{'%03d' % i}" }, JSON.parse(page.body)
  end
end
