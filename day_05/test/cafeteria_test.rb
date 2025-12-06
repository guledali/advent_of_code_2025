# battery_bank_test.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/cafeteria'

describe 'day_05' do
  describe 'cafeteria' do
    it 'should read the data file correctly' do
      refute Cafeteria.data.empty?
    end

    it 'should find all the available_ingredient in the data' do
      cafeteria = Cafeteria.new

      assert_equal [1, 5, 8, 11, 17, 32], cafeteria.available_ingredient
    end
  end
end
