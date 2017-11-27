# Parcels

#### _Project in Ruby_

#### By Kelsey Langlois and Megan Olson

## Description

_A Ruby web app that calculates the cost of shipping parcels._

## Setup/Installation Requirements

* Clone this repository

## Specifications

* Program determines volume of a parcel based on its dimensions.
  * Example Input: 3, 3, 3
  * Example Output: 27
* Program determines cost to ship of a parcel based on the following:
  * Program returns a base cost of 2 dollars.
    * Example Input: Weight: 0, Volume: 1, Shipping: "Standard"
    * Example Output: 2
  * Program adds 1 dollar for each pound the parcel weighs.
    * Example Input: Weight: 3, Volume: 1, Shipping: "Standard"
    * Example Output: 5
  * Program adds 1 dollar for each cubic foot of volume greater than 1 cubic foot
    * Example Input: Weight: 0, Volume: 3, Shipping: "Standard"
    * Example Output: 4
  * Program adds 10 dollars for 2-day shipping.
    * Example Input: Weight: 0, Volume: 1, Shipping: "2-Day"
    * Example Output: 12
  * Program adds 20 dollars for next-day shipping.
    * Example Input: Weight: 0, Volume: 1, Shipping: "Next-Day"
    * Example Output: 22
  * Program adds $.50 for each square foot of surface area if user requests gift-wrapping services.
  * Example Input: Weight: 2, Surface-area: 6, Volume: 2, Shipping: "Standard", Gift-wrapping: true
  * Example Output: 6

## Support and contact details

_Please contact [kels.langlois@gmail.com](mailto:kels.langlois@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Sinatra

### License

Copyright (c) 2017 **Kelsey Langlois and Megan Olson**

*This software is licensed under the MIT license.*
