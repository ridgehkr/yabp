Yet Another Boilerplate (YABP)
====

This Middleman boilerplate project was originally created to help me get a head start on new front-end development and uses SASS, HAML, and CoffeeScript.

Core components are:
* [Modernizr](http://modernizr.com/) w/ script loading via [yepnope.js](http://yepnopejs.com/)
* inspiration from the [HTML5 Boilerplate](http://html5boilerplate.com/)
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
* script loading via a customized build of Modernizr with mq(), load(), the canvas element test, and html5shiv and printshiv. Feel free to replace it with your own build, but keep in mind that js/loader.js.coffee may need to be changed to match. 
  * all scripts written with CoffeeScript
  * loading global JS through Modernizr's load() function (an alias of yepnope's load())
  * testing for CSS3 support and loading JavaScripts to compensate on failure
  * loading jQuery with a fallback to local
* SASS w/ Compass
  * all styles are minimalistic, responsive, and never nested beyond 2 SASS levels.
  * utilizing the SMACSS approach to CSS organization and selectors
  * all elements use the border-box box-sizing style
  * a few generic column layouts between two and five columns wide which resize and realign responsively
* humans.txt and robots.txt

Getting Started
----

### Installation
If it doesn't already exist, create ```~/.middleman```:
```
$ mkdir ~/.middleman
```
Clone the repository to this directory:
```
$ cd ~/.middleman
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
YABP comes with a very basic grid system. It's not intended to be an invasive, all-encompasing grid system such as Blueprint or Bootstrap's, just organizational blocks for sub-content layout.

To constrain the width of your content to the defined ```$outer-width``` value inside ```css/main.scss```, wrap in a div with the class ```l-container```

To create a column layout, create a wrapping div with the appriate class (```l-halves``` which is built in, but feel free to add your own), then create the appropriate number of child elements and give them the ```l-col``` class.

For example, this will generate a two-column grid constrained by the max-width of ```$outer-width```:
```haml
.l-container
    .l-halves
        .l-col This is column 1
        .l-col This is column 2
```

You can create faux borders for the two-column layouts. This uses the ::before pseudo-element to generate borders to match the height of the containing element, which means you don't need JavaScript to equalize the height of your columns to make their borders line up.

To create faux columns, add the ```l-faux-columns``` class to your ```l-halves``` element. 

Example:
```haml
.l-container
    .l-halves.l-faux-columns
        .l-col This is column 1
        .l-col This is column 2
```

### The Media Box
YABP includes basic media embed styles which allow you to insert responsive YouTube, Vimeo, or other embedded videos into your page. To make a video embed responsive, simple wrap it with a class of ```.m-media-embed```
