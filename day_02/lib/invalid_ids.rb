# invalid_ids.rb
# frozen_string_literal: true

# Class for InvalidIDS
class InvalidIds
  def initialize
    @invalid_ids = []
  end

  def find(range)
    range.each do |num|
      digits = num.to_s.chars
      @invalid_ids.push(num) if digits.first == digits.last
    end

    get_length
  end

  private

  def get_length
    @invalid_ids.length
  end
end
