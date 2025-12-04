# test_invalid_ids.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/invalid_ids'

# Tests for InvalidIDS, checking repeated-IDs in ranges.
class TestInvalidIDs < Minitest::Test
  def test_invalid_ids_first
    range = 10..23

    invalid_ids = InvalidIds.new

    assert_equal 2, invalid_ids.find(range)
  end

  def test_invalid_ids_second
    range = 95..115

    invalid_ids = InvalidIds.new

    assert_equal 2, invalid_ids.find(range) # 99
  end
end
