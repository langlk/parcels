#!/usr/bin/env ruby

require 'rspec'
require 'parcel'

describe('Parcel') do
  describe('#volume') do
    it "returns the volume of a parcel based on its dimensions" do
      parcel = Parcel.new(3, 3, 3, 0)
      expect(parcel.volume).to(eq(27))
    end
  end

  describe("#surface_area") do
    it("returns surface area of a parcel") do
      parcel = Parcel.new(1, 1, 1, 0)
      expect(parcel.surface_area).to(eq(6))
    end
  end

  describe("#cost_to_ship") do
    it "returns a base cost of 2 dollars" do
      parcel = Parcel.new(1, 1, 1, 0)
      expect(parcel.cost_to_ship("standard", "no")).to(eq(2))
    end

    it "adds 1 dollar for each pound the parcel weighs" do
      parcel = Parcel.new(1, 1, 1, 3)
      expect(parcel.cost_to_ship("standard", "no")).to(eq(5))
    end

    it "adds 1 dollar for each cubic foot of volume greater than 1 cubic foot" do
      parcel = Parcel.new(1, 1, 3, 0)
      expect(parcel.cost_to_ship("standard", "no")).to(eq(4))
    end

    it "adds 10 dollars for 2-day shipping" do
      parcel = Parcel.new(1, 1, 1, 0)
      expect(parcel.cost_to_ship("2-day", "no")).to(eq(12))
    end

    it "adds 20 dollars for next-day shipping" do
      parcel = Parcel.new(1, 1, 1, 0)
      expect(parcel.cost_to_ship("next-day", "no")).to(eq(22))
    end

    it "adds $.50 for each square foot of surface area if user requests gift-wrapping services" do
      parcel = Parcel.new(1, 1, 1, 2)
      expect(parcel.cost_to_ship("standard", "yes")).to(eq(7))
    end
  end
end
