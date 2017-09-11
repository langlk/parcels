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
    shipping_mode = {"standard" => 0, "2-day" => 10, "next-day" => 20}
    2 + @weight + (volume - 1) + shipping_mode[shipping]
  end
end
