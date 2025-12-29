# trash_dsl
# frozen_string_literal: true

# Class for TrashDSL
class TrashDSL
  attr_reader :list, :operator

  def initialize(&block)
    instance_eval(&block)
  end

  def numbers(*nums)
    @list = nums
  end

  def use(operator)
    @operator = operator
  end

  def compute
    total = @operator == '*' ? 1 : 0
    @list.each do |n|
      total = case @operator
              when '+' then total + n
              when '-' then total - n
              when '*' then total * n
              else raise ArgumentError, "Unknown operator: #{@operator}"
              end
    end
    total
  end
end
