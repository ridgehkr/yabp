Yet Another Boilerplate (YABP)
====

This boilerplate was originally created to help me get a head start on new middleman projects and uses SASS, HAML, and CoffeeScript.

Core components are:
* feature-aware script loading via [yepnope.js](http://yepnopejs.com/)
* inspiration from the [HTML5 Boilerplate](http://html5boilerplate.com/)
* mobile-first design using the [SMACSS](http://smacss.com/) approach
* [Modernizr](http://modernizr.com/) for scripe loading and feature testing
* [Zepto](http://zeptojs.com/) with a fallback to [jQuery](http://jquery.com/) if not supported
* modern browser support (Chrome, FF, Safari, Opera, IE 9+)
* styles are created with SASS, so components can be easily commented out

Component Details
----

*Browse to the index file to view an example of all components in action.*

* Middleman template complete with a basic demo written in HAML, CoffeeScript, and SASS and a [config file](config.rb) with recommended settings.
* completely disables IE's Compatibility View
* script loading via yepnope within Modernizr. Feel free to replace it with your own build, but keep in mind that [loader.js.coffee](source/js/loader.js.coffee) may need to be changed to match. 
* all styles are minimalistic, responsive, and easily overridden
* a basic column setup for an inline-block style layout
* [humans.txt](source/humans.txt) and [robots.txt](source/robots.txt)

Getting Started
----

### Installation
If it doesn't already exist, create ```~/.middleman``` and move to it:
```
$ mkdir -p ~/.middleman && cd ~/.middleman
```
Clone the repository:
```
$ git clone git@github.com:ridgehkr/yabp.git
```

```cd``` to the directory where you want to create your project and use ```middleman init``` to create a new project, passing in the ```--template``` flag to specify yabp:
```
$ middleman init test-yabp --template=yabp
```

```cd``` into the project and install the required gems:
```
$ bundle install
```

Once all the required gems are installed, we're ready to fire up the Middleman server:
```
$ middleman server
```

Point your browser to ```http://0.0.0.0:4567``` and start coding!

### The Grid
YABP comes with a very basic grid system. It's not intended to be an invasive, all-encompasing grid system such as Blueprint or Bootstrap's, just organizational containers and child blocks for your basic layout needs.

* ```.l-container``` constrains width to the defined ```$outer-width``` value inside css/base/_base.scss
* ```.l-col-container``` used to wrap ```.l-col``` elements. Uses the Layout font family to get rid of all spacing between columns. It is recommended that you extend this class to create halves / thirds / quarters etc. column containers. A two-column container, ```.l-halves```, has already been created for you.
* ```l-col``` is a basic column container. Nest inside ```.l-col-container``` and set a percentage width to create a column layout.
* ```.l-spaced-grid``` wraps a grid of evenly-spaced columns. Child elements must be ```.l-grid-item```
* ```.l-grid-item``` defines evenly-spaced columns of a grid. The space between columns will be defined as the leftover percentage not used up by the item width. For example, a width of 24% will evenly space 4% of the container's width in between columns.

### The Media Box
YABP includes basic media embed styles which allow you to insert responsive YouTube, Vimeo, or other embedded videos into your page. To make a video embed responsive, simple wrap it with a class of ```.m-media-embed```

### The Inline List
A simple no-space inline list called ```.inline-list``` has been created to base horizontal navigation, tabs, etc. off of.
