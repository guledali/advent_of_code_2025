# battery_bank_test.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/cafeteria'

describe 'Cafeteria' do
  def setup
    @cafeteria = Cafeteria.new
  end

  it 'should read the data file correctly' do
    assert_equal true, @cafeteria.data?
  end

  it 'should find all the available_ingredient in the data' do
    available_ingredient = [1, 5, 8, 11, 17, 32].map(&:to_s)

    assert_equal available_ingredient, @cafeteria.available_ingredient_ids
  end

  it 'should be find all the fresh ID ranges in the data,' do
    id_ranges = %w[
      3-5
      10-14
      16-20
      12-18
    ]

    assert_equal id_ranges, @cafeteria.ingredient_id_ranges
  end

  it 'should return all numbers in the given range' do
    assert_equal [3, 4, 5, 6, 7], @cafeteria.to_range('3-7')
  end

  it 'should find the fresh ingredients in the available' do
    assert_equal [4, 5], @cafeteria.find_ingredient(ranges: [4, 5, 6, 7, 8], ids: [4, 5])
  end
end
