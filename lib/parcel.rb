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

  def cost_to_ship(shipping, gift_wrapping)
    shipping_mode = {"standard" => 0, "2-day" => 10, "next-day" => 20}
    result = 2 + @weight + (volume - 1) + shipping_mode[shipping]
    if gift_wrapping == 'yes'
      result += surface_area * 0.50
    end
    result
  end

  def surface_area
    (@width * @length + @width * @height + @height * @length) * 2
  end
end
