# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/safe'

ROTATIONS_1 = %w[
  L68 L30 R48 L5 R60 L55 L1 L99 R14 L82
].freeze

ROTATIONS_2 = %w[
  R18 L68
].freeze

# Test Safe.rotate_password counts how many times the dial hits 0.
class SafeTest < Minitest::Test
  def test_rotate_password_first
    safe = Safe.new

    assert_equal 3, safe.rotate_password(*ROTATIONS_1)
  end

  def test_rotate_password_second
    safe_second = Safe.new

    assert_equal 1, safe_second.rotate_password(*ROTATIONS_2)
  end
end
