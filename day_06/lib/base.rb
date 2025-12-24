# base.rb
# frozen_string_literal: true

# Class for Base
class Base
  def self.data
    # File.read(File.join(__dir__, '../fixtures', 'data.txt')).split("\n")

    raw_data = File.read(File.join(__dir__, '../fixtures', 'data.txt')).split("\n")

    raw_data.map do |row|
      row.strip.split(/\s+/).map { |v| v =~ /\D/ ? v : v.to_i }
    end
  end

  def data?
    Base.data.any?
  end
end
