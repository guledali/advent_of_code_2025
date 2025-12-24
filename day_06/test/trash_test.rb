# trash_test.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/trash'

describe 'Trash' do
  it 'should read the data from fixtures' do
    trash = Trash.new

    assert trash.data?, true
  end

  it 'should add numbers when operator is +' do
    trash = Trash.new

    result = trash.throw_trash([3, 4, 5], '+')

    assert_equal 12, result
  end

  it 'multiplies numbers when operator is *' do
    trash = Trash.new

    result = trash.throw_trash([2, 3, 4], '*')

    assert_equal 24, result
  end
end
