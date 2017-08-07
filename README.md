[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE.txt)
[![Build Status](https://travis-ci.org/UltimateCoder00/Event-Finder.svg?branch=master)](https://travis-ci.org/UltimateCoder00/Event-Finder)
[![Coverage Status](https://coveralls.io/repos/github/UltimateCoder00/Event-Finder/badge.svg?branch=master)](https://coveralls.io/github/UltimateCoder00/Event-Finder?branch=master)
[![Code Climate](https://codeclimate.com/github/UltimateCoder00/Event-Finder/badges/gpa.svg)](https://codeclimate.com/github/UltimateCoder00/Event-Finder)
[![Issue Count](https://codeclimate.com/github/UltimateCoder00/Event-Finder/badges/issue_count.svg)](https://codeclimate.com/github/UltimateCoder00/Event-Finder)
[![BCH compliance](https://bettercodehub.com/edge/badge/UltimateCoder00/Event-Finder?branch=master)](https://bettercodehub.com/)
[![Scrutinizer Code Quality](https://scrutinizer-ci.com/g/UltimateCoder00/Event-Finder/badges/quality-score.png?b=master)](https://scrutinizer-ci.com/g/UltimateCoder00/Event-Finder/?branch=master)
# Event Finder

### Summary
A ruby application for finding events in close proximity including cheapest ticket price and distance from a given location.

### Description
We are are required to write a program which accepts a user location as a pair of co-ordinates (x,y), and returns a list of the five closest events, along with the cheapest ticket price for each event.

##### Example
An example code is:
```
- Please Input Coordinates: > 4,2
- Closest Events to (4,2):
- Event 003 - $30.29, Distance 3
- Event 001 - $35.20, Distance 5
- Event 006 - $01.40, Distance 12
```

### Scenario
The program consists of a world, events, event tickets and event distance from a given location, with the following assumptions:

##### Program
- Randomly generated seed data.

##### World
- Operates in a world that ranges from -10 to +10 (X axis), and -10
to +10 (Y axis).
- Each co-ordinate can hold a maximum of one event.

##### Event
- Each event has a unique numeric identifier (e.g. 1, 2, 3).
- Each event has zero or more tickets.

##### Ticket
- Each ticket has a non-zero price, expressed in US Dollars.

##### Distance
- The distance between two points should be computed as the Manhattan distance.

### Installation
Follow the instructions below to install and setup all the tools to use the Event Finder code
##### Install Ruby Version Manager (RVM)
Open your terminal and type this line in:
```
\curl -L https://get.rvm.io | bash -s stable
```
##### Install Ruby 2.4.0
Open your terminal and type this line in:
```
rvm install ruby-2.4.0
```
##### Install Code to Local Device
To install the code on your local device, do the following:

* Clone repository
* `cd` to the project's root directory
* Run `gem install bundler`
* Run `bundle install` to install all of the required gems

### Code Example
Open your terminal and run irb or pry, then run the program. An example below is given:
```
Event-Finder git:(master) irb
2.4.0 :001 > require './lib/event_finder'
 => true
2.4.0 :002 > event_finder = EventFinder.new
 => #<EventFinder:0x007f952b8baa48 @event_locations=#<Locations:0x007f952b8baa20 @coordinates=[[#<Event:0x007f952b8ba4d0 @id=388209,.......
 2.4.0 :003 > event_finder.closest_events_to(4,2)
 The Closest Events to (4,2) are:
 1) Event 266056 - $0.0, Distance 0
 2) Event 849819 - $125.09, Distance 1
 3) Event 300349 - $186.31, Distance 2
 4) Event 634838 - $56.61, Distance 2
 5) Event 665843 - $85.88, Distance 3
  => nil
 2.4.0 :004 > event_finder.closest_events_to(5,2)
 The Closest Events to (5,2) are:
 1) Event 266056 - $0.0, Distance 1
 2) Event 145682 - $243.01, Distance 2
 3) Event 849819 - $125.09, Distance 2
 4) Event 212090 - $21.58, Distance 3
 5) Event 634838 - $56.61, Distance 3
  => nil
 2.4.0 :005 > event_finder.closest_events_to(5,3)
 The Closest Events to (5,3) are:
 1) Event 212090 - $21.58, Distance 2
 2) Event 852760 - $101.15, Distance 2
 3) Event 266056 - $0.0, Distance 2
 4) Event 665843 - $85.88, Distance 3
 5) Event 876607 - $99.2, Distance 3
  => nil
 2.4.0 :006 > event_finder.closest_events_to(10,10)
 The Closest Events to (10,10) are:
 1) Event 768363 - $566.35, Distance 0
 2) Event 135603 - $197.67, Distance 1
 3) Event 762934 - $22.05, Distance 2
 4) Event 499779 - $234.51, Distance 2
 5) Event 41852 - $22.27, Distance 2
  => nil
 2.4.0 :007 > event_finder.closest_events_to(-8,9)
 The Closest Events to (-8,9) are:
 1) Event 876013 - $0.0, Distance 0
 2) Event 918064 - $489.45, Distance 1
 3) Event 481482 - $76.43, Distance 2
 4) Event 680052 - $222.01, Distance 2
 5) Event 508444 - $335.75, Distance 2
  => nil
```
### Instructions
- Please detail any assumptions you have made.
- How might you change your program if you needed to support multiple events at the
same location?
- How would you change your program if you were working with a much larger world
size?
