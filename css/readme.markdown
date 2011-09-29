# Writing CSS With Sass

The single largest improvement to my process in the last few years has been switching to Sass for writing my CSS. That's where the real power of the Survival Kit is. Give it a shot.

## Setting up Sass & Compass

  - [Instructions on compass-style.org](http://compass-style.org/install/)

## Sass Workflow in the Survival Kit

  - Do not edit the CSS file. Sass will generate that file for you.
  - All the Sass source files are in /css/src/
  - Start with style.sass
    - By default you'll probably want to leave it as it is. By default it points to the 'partials' in the PARTIALS directory. That's what you want if you're styling a normal project.
    - the other flavor currently available is the style tile flavor. I'll add more to that later, but here's a link to a site explaining the [concept](http://badassideas.com/style-tiles-as-a-web-design-process-tool/).
  - Then walk thru the steps in style.sass
    - This file controls which specific partials from the kit you want to add to your project.
    - The early includes add variables, mixins, and functions, but don't compile into any css. They're meant to be helpful in the sass writing to come.
    - Enable of disable partials as you see fit.
