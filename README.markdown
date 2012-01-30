# [The Coding Designer's Survival Kit](http://thecodingdesigner.com) ![project status](http://stillmaintained.com/canarymason/Survival-Kit.png) #

**A Toolset for Designing Web Sites in the Browser**


## Tools

  1. A set of starter HTML files to rapidly create a [living style guide](http://24ways.org/2011/front-end-style-guides) with most common **HTML elements and ui patterns**. It's easy to design and style these as is or customize them to your needs. Plus there's a blank page, based on the [HTML5 Boilerplate](http://html5boilerplate.com). Fill that with content and it won't be blank anymore.
  2. A set of **[Sass](http://sass-lang.com/)** mixins and patterns.
  3. A flexible and comprehensive **Sass workflow** that focuses on giving you a ton of tools, but makes very few assumptions on how you'll use them. Keep your css clean and minimal, go mobile first, or build a very custom responsive site.
  4. Your favorite open source **javascript libraries**. But you don't need them all, all the time. The Survival Kit keeps them in a "side drawer" and you can experiment or use them as you need them.
  5. A set of templates for creating [Style Tiles](http://badassideas.com/style-tiles-as-a-web-design-process-tool/), a very useful tool for conveying design concepts to clients.


## Using the Survival Kit

The Survival Kit is a Compass extension. That means that you need to be using [Sass](http://sass-lang.com/) and [Compass](http://compass-style.org/), but you already are, right? It uses the "install" command from Compass to write the html, sass or scss, javascript and other assets into the directories you specify in your Compass configuration file.

### Installation

  0. [Install Sass and Compass](http://compass-style.org/install/), if you haven't already.
  1. **Terminal**: `gem install survivalkit`

#### For Existing Compass Projects
  1. Add `require 'survivalkit'` in Compass's config.rb file
  2. **Terminal**: navigate to your project directory:  `cd PATH_TO_YOUR_PROJECT`
  2. **Terminal**: `compass install survivalkit`

#### For New Compass Projects
  2. **Terminal**: `compass create my_project -r survivalkit -u survivalkit --javascripts-dir js --css-dir css`

##### Note on Sass Warnings
  When you first install or compile you may see some Sass warnings in your compiler. like: `WARNING on line 4:
This selector doesn't have any properties and will not be rendered.`

  These are compilation warnings, but they're intentional. I set up the sass files with many stub selectors that have no css properties. This way you can fill them in with the values you want, or simply leave them blank. If you leave them blank Sass omits them at compilation, but issues a warning on the assumption that you wanted to add a style there. I don't know of a way to suppress that warning during installation.


## Getting Started

~~I've created an intro [screencast](http://thecodingdesigner.com/tutorials/please-allow-me-introduce-myself) and a video podcast about using the Kit while designing in the browser at [The Coding Designer](http://thecodingdesigner.com/)~~
I'll be recording a new video soon.

## Requirements

- [Sass](http://sass-lang.com/)
- [Compass](http://compass-style.org/)

### Helpful

- [Susy](http://susy.oddbird.net/)
- [Sassy Modular Scale](https://github.com/scottkellum/modular-scale)
- [Color Schemer](https://github.com/scottkellum/color-schemer)
- [Fancy Buttons](https://github.com/imathis/fancy-buttons)
- [Livereload](http://livereload.com/)


## Acknowledgements, Installation, & Documentation

- [HTML5 Boilerplate](http://html5boilerplate.com)
- [Sass](http://sass-lang.com/)
- [Compass](http://compass-style.org/)
- [Susy](http://susy.oddbird.net/)
- [Fancy Buttons](https://github.com/imathis/fancy-buttons)
- [Modernizr](http://modernizr.com/)
- [Selectivizr](http://selectivizr.com/)
- [Modularscale](http://modularscale.com/)
- [Screencast](http://thecodingdesigner.com/)



## License

Licensed under MIT/GPL.

GPL license:
http://www.gnu.org/licenses/gpl.html

MIT license:
http://www.opensource.org/licenses/mit-license.php


Except included open source projects:

- BigText: MIT/GPL
- Dynamic-Carousel: MIT
- flexie: MIT
- flickrbomb: MIT
- formalize: MIT/GPL
- FitText: WTFPL license
- Geared-Scrolling: MIT
- Lettering.js: WTFPL license
- PaintbrushJS: MIT
- Respond: MIT/GPLv2
- Sticky-Footer-jQuery-Plugin: MIT
- html5-boilerplate: public domain
- iSwipe-jQuery-Plugin: MIT
- infinite-scroll: MIT
- jquery-lightbox: BSD
- jquery-ui: MIT/GPL
- modernizr: BSD/MIT
- pie: Apache/GPL
- scrollability: Apache
- joyride: MIT
- orbit: MIT
- reveal: MIT
- flexslider: MIT
- fitvids: WTFPL license
- deorphan: MIT/GPL
