# [<img src="http://i.imgur.com/4t1ClRx.png">](http://concisecss.com/)

[![Gitter chat](https://badges.gitter.im/concisecss.png)](https://gitter.im/concisecss) 
[![Gem Version](https://badge.fury.io/rb/concisecss.svg)](http://badge.fury.io/rb/concisecss)

Concise is a lightweight, front-end framework that provides a number of great features without the bloat. Concise is built based on Object-Oriented CSS principles and keeps semantics in mind to provide a small learning curve, but a high level of customization.

## Installation Instructions

Add this line to your application's Gemfile:

    gem 'concisecss', '~> 0.0.3'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install concisecss

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
If you intend to extend or override concise. You might want to create an override file, for example app/assets/stylesheets/custom.css.scss and then import concise
   ```css
    @import "concise";
   ```

## Documentation

What would a project be without great documentation? Concise has documentation for everything that is included in the framework. If you see something that is missing or incorrect, don't hesitate to open up an issue on our GitHub repo.

Check out our documentation here: [http://concisecss.com/documentation](http://concisecss.com/documentation)

### Changelog

You can keep up-to-date with the changes that we have made via our [releases page](https://github.com/ConciseCSS/concise.css-gem/releases).

## Versioning
   
Concise is currently maintained under the [Semantic Versioning guidelines](http://semver.org/).

## Elsewhere

[![Like Concise on Facebook](http://i.imgur.com/4dy5UUK.png)](https://facebook.com/ConciseCSS)
[![Follow Concise on Twitter](http://i.imgur.com/4AkKsMx.png)](https://twitter.com/ConciseCSS)
[![Follow Concise on Google+](http://i.imgur.com/gdFNEMe.png)](https://plus.google.com/103423710089455112688)

## License

Code released under the [MIT license](https://github.com/ConciseCSS/concise.css/blob/master/LICENSE). Documentation released under [Creative Commons](http://creativecommons.org/licenses/by-sa/4.0/).

[![githalytics.com alpha](https://cruel-carlota.pagodabox.com/4f404142bdcae0124dadfb2427083d1f "githalytics.com")](http://githalytics.com/ConciseCSS/concise.css-gem)
