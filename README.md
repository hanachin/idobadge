# Idobadge
[![Gem Version](https://badge.fury.io/rb/idobadge.svg)](http://badge.fury.io/rb/idobadge)
[![Build Status](https://travis-ci.org/hanachin/idobadge.svg?branch=master)](https://travis-ci.org/hanachin/idobadge)
[![Code Climate](https://codeclimate.com/github/hanachin/idobadge/badges/gpa.svg)](https://codeclimate.com/github/hanachin/idobadge)
[![Test Coverage](https://codeclimate.com/github/hanachin/idobadge/badges/coverage.svg)](https://codeclimate.com/github/hanachin/idobadge)
[![Dependency Status](https://gemnasium.com/hanachin/idobadge.svg)](https://gemnasium.com/hanachin/idobadge)
[![Inline docs](http://inch-ci.org/github/hanachin/idobadge.png?branch=master)](http://inch-ci.org/github/hanachin/idobadge)

Text badges generator for idobata.io generic webhook.

![badges screenshot](screenshot.png)

## Installation

Add this line to your application's Gemfile:

    gem 'idobadge'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install idobadge

## Usage

``` ruby
require 'idobadge'

Idobadge.success('success')
# => "<span class=\"label label-success\"><i class=\"fa fa-sun-o\"></i> <span class=\"label label-inverse\">success</span></span>"

Idobadge.warning('warning')
# => "<span class=\"label label-warning\"><i class=\"fa fa-umbrella\"></i> <span class=\"label label-inverse\">warning</span></span>"

Idobadge.important('important')
# => "<span class=\"label label-important\"><i class=\"fa fa-bomb\"></i> <span class=\"label label-inverse\">important</span></span>"

Idobadge.failure('failure')
# => "<span class=\"label label-important\"><i class=\"fa fa-bomb\"></i> <span class=\"label label-inverse\">failure</span></span>"

# customize icon
Idobadge.success('success', icon: 'thumbs-o-up')
# => "<span class=\"label label-success\"><i class=\"fa fa-thumbs-o-up\"></i> <span class=\"label label-inverse\">success</span></span>"

# no icon
Idobadge.success('success', icon: nil)
# => "<span class=\"label label-success\"><span class=\"label label-inverse\">success</span></span>"
```

## Contributing

1. Fork it ( https://github.com/hanachin/idobadge/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
