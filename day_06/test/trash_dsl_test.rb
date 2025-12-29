# trash_dsl_test.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/trash_dsl'

describe 'TrashDSL' do
  def dsl_result(numbers, operator)
    TrashDSL.new do
      numbers(*numbers)
      use operator
    end.compute
  end

  it 'should check if the DSL for trash works' do
    assert_equal 12, dsl_result([3, 4, 5], '+')
  end
end
