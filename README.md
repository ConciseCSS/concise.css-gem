# [<img src="http://i.imgur.com/4t1ClRx.png">](http://concisecss.com/)

[![Code Climate](https://codeclimate.com/github/ConciseCSS/concise.css-gem.png)](https://codeclimate.com/github/ConciseCSS/concise.css-gem)
[![Gem Version](https://badge.fury.io/rb/concisecss.svg)](http://badge.fury.io/rb/concisecss)

Concise is a lightweight, front-end framework that provides a number of great features without the bloat. Concise is built based on Object-Oriented CSS principles and keeps semantics in mind to provide a small learning curve, and a high level of customization.

## Installation Instructions

Add this line to your application's Gemfile:

    gem 'concisecss', '~> 2.0.0'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install concisecss

## Usage

Not every single project you are  working needs all of the Concise JavaScript files. You can update your `application.js` with the files you need
   ```js
    //= require concisecss/navigation
    //= require concisecss/non-responsive
    //= require concisecss/naver
    //= require concisecss/dropdown
   ```
To add the CSS just require
   ```css
    *= require concise
   ```
If you intend to extend or override Concise, you might want to create an override file. For example: `app/assets/stylesheets/custom.scss` and then import concise
   ```css
    @import "concise";
   ```

## Documentation

What would a project be without great documentation? Concise has documentation for everything that is included in the framework. If you see something that is missing or incorrect, don't hesitate to open up an issue on our GitHub repo.

Check out our documentation here: [http://concisecss.com](http://concisecss.com)

### Changelog

You can keep up-to-date with the changes that we have made via our [releases page](https://github.com/ConciseCSS/concise.css-gem/releases).

## Versioning

Concise is currently maintained under the [Semantic Versioning guidelines](http://semver.org/).

## Elsewhere

[![Like Concise on Facebook](http://i.imgur.com/4dy5UUK.png)](https://facebook.com/ConciseCSS)
[![Follow Concise on Twitter](http://i.imgur.com/4AkKsMx.png)](https://twitter.com/ConciseCSS)

## License

Code released under the [MIT license](https://github.com/ConciseCSS/concise.css/blob/master/LICENSE). Documentation released under [Creative Commons](http://creativecommons.org/licenses/by-sa/4.0/).
