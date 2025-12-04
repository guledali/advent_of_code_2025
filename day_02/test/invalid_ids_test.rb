# test_invalid_ids.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/invalid_ids'

# Tests for InvalidIDS, checking repeated-IDs in ranges.
class TestInvalidIDs < Minitest::Test
  def test_invalid_ids
    range = [11, 22]

    invalid_ids = InvalidIDS.new

    assert_equal 2, invalid_ids.find(range)
  end
end
