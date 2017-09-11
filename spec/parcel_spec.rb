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
end
