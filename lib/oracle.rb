# frozen_string_literal: true

class Oracle
  attr_accessor :type

  def initialize(type: :coin)
    @type = type
  end

  def stalk
    prob = Random.new.rand(1..16)
    case
      when prob == 1
      then 6
      when prob.between?(2, 6)
      then 7
      when prob.between?(7, 13)
      then 8
      when prob.between?(14, 16)
      then 9
    end
  end

  def coin
    prob = Random.new.rand(1..8)
    case
      when prob == 1
      then 6
      when prob.between?(2, 4)
      then 7
      when prob.between?(5, 7)
      then 8
      when prob == 8
      then 9
    end
  end

  def line
    return coin if type == :coin

    stalk
  end
end
