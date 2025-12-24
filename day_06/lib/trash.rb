# trash.rb
# frozen_string_literal: true

require_relative './base'

# Class for Trash
class Trash < Base
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
