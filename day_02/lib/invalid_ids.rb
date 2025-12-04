# invalid_ids.rb
# frozen_string_literal: true

# Class for InvalidIDS
class InvalidIds
  def initialize
    @matches = []
  end

  def find(range)
    range.each do |num|
      digits = num.to_s.chars
      @matches.push(num) if digits.first == digits.last
    end

    get_length
  end

  private

  def get_length
    @matches.length
  end
end
