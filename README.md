Yet Another Boilerplate (YABP)
====

This Middleman-based boilerplate was originally created to help me get a head start on new front-end development projects and includes:
* [Middleman](http://middlemanapp.com/)
* [HAML](http://haml.info/)
* [HTML5 Boilerplate](http://html5boilerplate.com/)
* [SASS](http://sass-lang.com/) with some help from [Compass](http://compass-style.org/)
* the [SMACSS](http://smacss.com/) approach
* [CoffeeScript](http://coffeescript.org/)
* [jQuery](http://jquery.com/)
* [Sprockets](https://github.com/sstephenson/sprockets)
* [Respond](https://github.com/scottjehl/Respond)

Component Details
----

*Open the index file to view an example of all components in action.*

* Initiated Middleman project complete with a basic layout in HAML and a config file with suggested settings.
* HTML5
  * all template elements have been laid out to be friendly to responsive styles
  * loosely based on the HTML5 Boilerplate
* script loading via a customized build of Modernizr with mq(), load(), the canvas element test, and html5shiv and printshiv. Feel free to replace with your own build, but keep in mind that js/loader.js.coffee may need to be changed to match. 
  * all scripts written with CoffeeScript
  * loading global JS through Modernizr's load() function
  * testing for CSS3 support and loading JavaScripts to compensate on failure
  * loading jQuery with a fallback to local
  * loading Google Analytics script with load() instead of the traditional placement in footer
* SASS w/ Compass
  * all styles are completely responsive
  * utilizing the SMACSS approach to CSS organization and selectors
  * all elements use the border-box box-sizing style
  * a few generic column layouts between two and five columns wide which resize and realign responsively
* humans.txt and robots.txt
