# trash_test.rb
# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/trash'

COLUMNS = %i[first_column second_column third_column fourth_column].freeze

describe 'Trash' do
  def setup
    @trash = Trash.new
  end

  it 'should read the data from fixtures' do
    assert @trash.data?, true
  end

  it 'should add numbers when operator is +' do
    assert_equal 12, @trash.throw_trash([3, 4, 5], '+')
  end

  it 'should multiplies numbers when operator is *' do
    assert_equal 24, @trash.throw_trash([2, 3, 4], '*')
  end

  it 'should have one column named first_column' do
    Trash.organize_trashes(COLUMNS)

    assert_respond_to @trash, :first_column
  end

  it 'should return the correct format' do
    assert_equal [[123, 45, 6], '*'], @trash.clean_trashes([123, 45, 6, '*'])
  end

  it 'should count the amount of total trashes' do
    Trash.organize_trashes(COLUMNS)

    first_column = @trash.first_column

    assert_equal 33_210, @trash.total_trashes(first_column)
  end
end
