# test_invalid_ids.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/invalid_ids'

describe 'day_02' do
  it 'should be able to find invalid ids within two digits' do
    two_digits_range = 10..23

    invalid_ids = InvalidIds.new

    assert_equal 2, invalid_ids.find(two_digits_range)
  end

  it 'should be able to find invalid ids within three digits' do
    three_digits_range = 100..115

    invalid_ids = InvalidIds.new

    assert_equal 1, invalid_ids.find(three_digits_range)
  end
end
