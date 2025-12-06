# battery_bank.rb
# frozen_string_literal: true

# Class for Cafeteria
class Cafeteria
  def self.data
    File.read(File.join(__dir__, '../fixtures', 'data.txt')).split("\n")
  end

  def available_ingredient
    [1, 5, 8, 11, 17, 32]
  end
end
