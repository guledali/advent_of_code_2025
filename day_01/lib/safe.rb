# frozen_string_literal: true

STARTING_POINT_WHEEL = 50

# Safe class
class Safe
  def initialize
    @steering_wheel = STARTING_POINT_WHEEL
  end

  def rotate_password(*rotations)
    zero_count = 0

    rotations.each do |rotation|
      direction = rotation[0]          # 'L' or 'R'
      steps = rotation[1..].to_i       # number of steps

      @steering_wheel += direction == 'L' ? -steps : steps
      @steering_wheel %= 100

      zero_count += 1 if @steering_wheel.zero?
    end

    zero_count
  end
end
