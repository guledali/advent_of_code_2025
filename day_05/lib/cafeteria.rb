# battery_bank.rb
# frozen_string_literal: true

# Class for Cafeteria
class Cafeteria
  attr_reader :available_ingredient_ids, :ingredient_id_ranges

  def initialize
    @ingredient_id_ranges = Cafeteria.data.select { |line| line.include?('-') } || []
    @available_ingredient_ids = (Cafeteria.data - @ingredient_id_ranges).reject(&:empty?) || []
  end

  def self.data
    File.read(File.join(__dir__, '../fixtures', 'data.txt')).split("\n")
  end

  def data?
    Cafeteria.data.any?
  end

  def find_ingredient(ranges:, ids:)
    fresh_ingredients = []

    ids.each do |id|
      fresh_ingredients << id if ranges.include?(id)
    end

    fresh_ingredients
  end

  def to_range(range)
    Range.new(*range.split('-').map(&:to_i)).to_a # '3-5' => 3,4,5
  end
end
