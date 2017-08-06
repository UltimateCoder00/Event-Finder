[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE.txt)
[![Build Status](https://travis-ci.org/UltimateCoder00/Event-Finder.svg?branch=master)](https://travis-ci.org/UltimateCoder00/Event-Finder)
[![Coverage Status](https://coveralls.io/repos/github/UltimateCoder00/Event-Finder/badge.svg?branch=master)](https://coveralls.io/github/UltimateCoder00/Event-Finder?branch=master)
[![Code Climate](https://codeclimate.com/github/UltimateCoder00/Event-Finder/badges/gpa.svg)](https://codeclimate.com/github/UltimateCoder00/Event-Finder)
[![Issue Count](https://codeclimate.com/github/UltimateCoder00/Event-Finder/badges/issue_count.svg)](https://codeclimate.com/github/UltimateCoder00/Event-Finder)
[![BCH compliance](https://bettercodehub.com/edge/badge/UltimateCoder00/Event-Finder?branch=master)](https://bettercodehub.com/)
# Event Finder

### Installation
Install Ruby 2.4.0

### Scenario
- Your program should randomly generate seed data.
- Your program should operate in a world that ranges from -10 to +10 (Y axis), and -10
to +10 (X axis).
- Your program should assume that each co-ordinate can hold a maximum of one event.
- Each event has a unique numeric identifier (e.g. 1, 2, 3).
- Each event has zero or more tickets.
- Each ticket has a non-zero price, expressed in US Dollars.
- The distance between two points should be computed as the Manhattan distance.

### Instructions
- You are required to write a program which accepts a user location as a pair of co-ordinates, and returns a list of the five closest events, along with the cheapest ticket price for each event.
- Please detail any assumptions you have made.
- How might you change your program if you needed to support multiple events at the
same location?
- How would you change your program if you were working with a much larger world
size?

### Code Example

- Please Input Coordinates: > 4,2
- Closest Events to (4,2):
- Event 003 - $30.29, Distance 3
- Event 001 - $35.20, Distance 5
- Event 006 - $01.40, Distance 12
