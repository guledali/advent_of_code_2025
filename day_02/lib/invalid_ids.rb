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

      repeated_twice(num, digits)
    end

    get_length
  end

  private

  def repeated_twice(num, digits)
    if digits.length == 2
      @invalid_ids.push(num) if digits.first == digits.last
    elsif digits.length == 3
      first = digits[0]
      second = digits[1]
      third = digits[2]

      @invalid_ids.push(num) if first == second && second == third
    end
  end

  def get_length
    @invalid_ids.length
  end
end
