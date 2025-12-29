# trash.rb
# frozen_string_literal: true

require_relative './base'
require 'debug'

# Class for Trash
class Trash < Base
  # Create methods programmatically
  def self.organize_trashes(columns)
    columns.each_with_index do |col_name, idx|
      next if method_defined?(col_name)

      index = idx

      define_method(col_name) do
        Trash.data.map { |row| row[index] }
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

  def clean_trashes(trash)
    format(trash)
  end

  def total_trashes(trash)
    clean_trash = clean_trashes(trash)

    # binding.break

    throw_trash(*clean_trash)
  end

  private

  def format(trash)
    operator = trash.pop
    list = trash
    [[*list], operator]
  end

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
