# trash_test.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/trash'

COLUMNS = %i[first_column second_column third_column fourth_column]

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

  it 'should have column 1' do
    Trash.organize_trashes(COLUMNS)

    trash = Trash.new

    assert_respond_to trash, :first_column
  end
end
