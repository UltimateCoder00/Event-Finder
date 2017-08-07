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

- Please Input Coordinates: > 4,2
- Closest Events to (4,2):
- Event 003 - $30.29, Distance 3
- Event 001 - $35.20, Distance 5
- Event 006 - $01.40, Distance 12

### Instructions
- Please detail any assumptions you have made.
- How might you change your program if you needed to support multiple events at the
same location?
- How would you change your program if you were working with a much larger world
size?
