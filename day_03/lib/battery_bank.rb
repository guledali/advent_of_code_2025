# battery_bank.rb
# frozen_string_literal: true

# Class for BatteryBank
class BatteryBank
  attr_reader :highest_batteries

  def initialize(battery_rows = nil)
    @highest_batteries = []
    @battery_rows = battery_rows
  end

  def total(batteries)
    batteries.length
  end

  def highest_volt(battery_rows = @battery_rows)
    digits = battery_rows.first.chars.map(&:to_i)

    highest = digits.sort.reverse.first(2)

    highest_batteries_bank(highest)

    highest_volts_bank
  end

  def to_jolts
    highest_batteries_joltage_number
  end

  def sum_high_battery_volt
    total_sum = 0

    @battery_rows.each do |row|
      battery_rows = Array(row)

      highest_volt(battery_rows)

      total_sum += highest_volts_bank.join.to_i # [9, 8] => 98

      puts total_sum
    end

    total_sum
  end

  private

  def highest_batteries_joltage_number
    highest_volt
    highest_volts_bank.join.to_i # [9, 8] => 98
  end

  def highest_volts_bank
    highest_batteries
  end

  def highest_batteries_bank(highest_pair)
    @highest_batteries = highest_pair
  end
end
