# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/safe'

ROTATIONS = %w[
  L68 L30 R48 L5 R60 L55 L1 L99 R14 L82
].freeze

describe 'day_01' do
  it 'should start with 50 as starting point' do
    safe = Safe.new

    assert_equal 50, safe.steering_wheel
  end

  it 'should land on 0 once when giving the dial R18 and L68' do
    few_rotations = %w[R18 L68]

    safe = Safe.new

    assert_equal 1, safe.rotate_password(*few_rotations)
  end

  it 'should land on 3 times if given full dial rotations' do
    safe = Safe.new

    assert_equal 3, safe.rotate_password(*ROTATIONS)
  end
end
