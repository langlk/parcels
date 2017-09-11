#!/usr/bin/env ruby

class Parcel
  def initialize(width, length, height, weight)
    @width = width
    @length = length
    @height = height
    @weight = weight
  end

  def volume
    @width * @height * @length
  end

  def cost_to_ship(shipping)
  end
end
