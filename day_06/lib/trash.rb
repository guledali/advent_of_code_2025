# trash.rb
# frozen_string_literal: true

require_relative './base'

# Class for Trash
class Trash < Base
  # Create methods programmatically
  def self.organize_trashes(columns)
    columns.each do |col_name|
      next if method_defined?(col_name)

      define_method(col_name) do
        []
      end
    end
  end

  def throw_trash(list, operator)
    total = initial_total(operator)

    list.each do |number|
      total = throwing_amount(total, number, operator)
    end

    total
  end

  private

  def initial_total(operator)
    operator == '*' ? 1 : 0
  end

  def throwing_amount(total, number, operator)
    case operator

    when '+'
      total + number
    when '-'
      total - number
    when '*'
      total * number
    else
      raise ArgumentError, "Unknown operator: #{operator}"
    end
  end
end
