# ConciseCss

[![Gem Version](https://badge.fury.io/rb/concisecss.svg)](http://badge.fury.io/rb/concisecss)


Concise is a lightweight front-end framework that provides a number of great features without the bloat. Concise is built based on Object-Oriented CSS principles and keeps semantics in mind to provide a small learning curve but high level of customization.

## Installation Instructions

Add this line to your application's Gemfile:

    gem 'concisecss'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install concisecss

## Documentation
 Check out concisecss documentation here: http://concisecss.com/documentation

## Usage

Not every single project you are  working needs all the ConciseCss javascripts files , you will need to update application.js with the files you need
   ```js
    //= require concisecss/navigation
    //= require concisecss/non-responsive
    //= require concisecss/naver
    //= require concisecss/dropdown
    //= require concisecss/close
   ```
To add the css just require 
 
   ```css
    *= require concise 
   ```

## Contributing

1. Fork it ( http://github.com/vezu/concisecss/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
