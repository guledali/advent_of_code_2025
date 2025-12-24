# base.rb
# frozen_string_literal: true

# Class for Base
class Base
  def self.data
    File.read(File.join(__dir__, '../fixtures', 'data.txt')).split("\n")
  end

  def data?
    Base.data.any?
  end
end
