Yet Another Boilerplate (YABP)
====

This Middleman boilerplate project was originally created to help me get a head start on new front-end development and uses SASS, HAML, and CoffeeScript.

Core components are:
* [Modernizr](http://modernizr.com/)
* code borrowed from the [HTML5 Boilerplate](http://html5boilerplate.com/)
* mobile-first design using the [SMACSS](http://smacss.com/) approach
* [jQuery](http://jquery.com/)
* [Respond](https://github.com/scottjehl/Respond)
* [Selectivizr](http://selectivizr.com/)

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

Getting Started
----

### The Grid
YABP comes with a very basic grid system. It's not intended to be an invasive, all-encompasing grid system such as Blueprint or Bootstrap's, just organizational blocks for sub-content layout.

To constrain the width of your content to the defined ```$outer-width``` value inside ```css/main.scss```, wrap in a div with the class ```l-container```

To create a column layout, create a wrapping div with the appriate class (```l-halves```, ```l-thirds```, ```l-quarters```, or ```l-fifths```), then create the appropriate number of child elements and give them the ```l-col``` class.

For example, this will generate a three-column grid constrained by the max-width of ```$outer-width```:
```haml
.l-container
    .l-thirds
        .l-col This is column 1
        .l-col This is column 2
        .l-col This is column 3
```

You can create faux borders for the two and three-column layouts. This uses the ::before and ::after pseudo-elements to generate borders to match the height of the containing element, which means you don't need JavaScript to equalize the height of your columns to make their borders line up.

To create faux columns, add the ```l-faux-columns``` class to your ```l-halves``` or ```l-thirds``` element. 

Example:
```haml
.l-container
    .l-halves.l-faux-columns
        .l-col This is column 1
        .l-col This is column 2
```

Legal Stuff
----

YABP is distributed under the MIT license
