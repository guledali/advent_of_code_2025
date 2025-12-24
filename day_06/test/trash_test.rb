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
    result = @trash.throw_trash([3, 4, 5], '+')

    assert_equal 12, result
  end

  it 'should multiplies numbers when operator is *' do
    result = @trash.throw_trash([2, 3, 4], '*')

    assert_equal 24, result
  end

  it 'should have one column named first_column' do
    Trash.organize_trashes(COLUMNS)

    assert_respond_to @trash, :first_column
  end
end
