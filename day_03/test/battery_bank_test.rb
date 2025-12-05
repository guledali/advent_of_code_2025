# battery_bank_test.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/battery_bank'

JOLTAGE_FROM_BANK = %w[
  987654321111111
  811111111111119
  234234234234278
  818181911112111
].freeze

describe 'day_03' do
  it 'should list number of rows of battery banks' do
    battery_bank = BatteryBank.new

    assert_equal 4, battery_bank.total(JOLTAGE_FROM_BANK)
  end

  it 'should be able to find the two highest numbers in selection' do
    battery_bank = BatteryBank.new(%w[987654321111111])

    assert_equal [9, 8], battery_bank.highest_volt
  end

  it 'should create a new battery outlet based on the hight volts in the bank' do
    battery_bank = BatteryBank.new(%w[987654321111111])

    assert_equal 98, battery_bank.to_jolts
  end

  it 'should get a summary of all high batteries joltage' do
    skip 'Fixing after'

    battery_bank = BatteryBank.new(JOLTAGE_FROM_BANK)

    assert_equal 357, battery_bank.sum_high_battery_volt
  end
end
