Yet Another Boilerplate (YABP)
====

This Middleman-based boilerplate was created to help me get a head start on new front-end development projects and includes:
* Middleman
* HAML
* SASS
* CoffeeScript
* Sprockets

Component Details
----

*Open the index file to view an example of all components in action.*

* HTML5 Boilerplate (all templates written in HAML)
  * using a modified version of Paul Irish's IE version classing for the HTML tag
* script loading via a customized build of Modernizr with mq(), load, canvas test, and html5shiv and printshiv only
  * all scripts written with CoffeeScript
  * loading global JS through .load()
  * testing for CSS3 support and loading JavaScripts to compensate on failure
  * loading jQuery with a fallback to local
  * loading Google Analytics script (instead of traditional placement in footer)
* SASS w/ Compass
  * utilizing the SMACSS approach to CSS organization and selectors
  * a few generic column layouts from halves to fifths
  * all styles are completely responsive
