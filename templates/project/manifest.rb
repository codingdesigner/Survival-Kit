description "Compass extension for The Coding Designer's Survival Kit located at http://thecodingdesigner.com"

stylesheet 'style.sass', :media => 'all'
stylesheet 'selectivizr.sass', :media => 'all'
stylesheet 'ie.sass', :media => 'all'
stylesheet 'partials/01-variables/_all.sass'
stylesheet 'partials/01-variables/_base.sass'
stylesheet 'partials/01-variables/_colors.sass'
stylesheet 'partials/01-variables/_fonts.sass'
stylesheet 'partials/01-variables/_grids-all.sass'
stylesheet 'partials/02-extend/_all.sass'
stylesheet 'partials/02-extend/_typography.sass'
stylesheet 'partials/03-defaults/_all.sass'
stylesheet 'partials/03-defaults/_common.sass'
stylesheet 'partials/03-defaults/_font-face.sass'
stylesheet 'partials/03-defaults/markup/_edits.sass'
stylesheet 'partials/03-defaults/markup/_grouping.sass'
stylesheet 'partials/03-defaults/markup/_headers.sass'
stylesheet 'partials/03-defaults/markup/_images.sass'
stylesheet 'partials/03-defaults/markup/_semantics.sass'
stylesheet 'partials/03-defaults/markup/_tables.sass'
stylesheet 'partials/03-defaults/markup/forms/_form-defaults.sass'
stylesheet 'partials/03-defaults/markup/forms/_formalize.sass'
stylesheet 'partials/04-grids/_grids-blueprint.sass'
stylesheet 'partials/04-grids/_grids-susy.sass'
stylesheet 'partials/05-ui-patterns/_common.sass'
stylesheet 'partials/05-ui-patterns/drupal/_ui-patterns.sass'
stylesheet 'partials/06-sprites/_sprites.sass'
stylesheet 'partials/07-layout-design/_layout.sass'
stylesheet 'partials/07-layout-design/_design.sass'
stylesheet 'partials/08-styletile/_tile-design.sass'
stylesheet 'partials/08-styletile/_tile-layout.sass'
stylesheet 'partials/09-responsive/_responsive-blueprint.sass'
stylesheet 'partials/09-responsive/_responsive-susy.sass'
stylesheet 'partials/10-media/_print.sass'
stylesheet 'partials/11-browser-adjustments/_ie.sass'
stylesheet 'partials/11-browser-adjustments/_modernizr.sass'
stylesheet 'partials/11-browser-adjustments/_selectivizr.sass'
# discover :stylesheets

html 'files/html/index.html', :to => 'index.html'
html 'files/html/404.html', :to => '404.html'
html 'files/html/survivalkit/elements-common.html', :to => 'survivalkit/elements-common.html'
html 'files/html/survivalkit/elements-html5.html', :to => 'survivalkit/elements-html5.html'
html 'files/html/survivalkit/elements-ui-patterns-drupal.html', :to => 'survivalkit/elements-ui-patterns-drupal.html'
html 'files/html/survivalkit/elements-ui-patterns.html', :to => 'survivalkit/elements-ui-patterns.html'
html 'files/html/survivalkit/elements-typography.html', :to => 'survivalkit/elements-typography.html'
html 'files/html/survivalkit/styletile/styletile.html', :to => 'survivalkit/styletile.html'

html 'files/html/formalize_jquery_demo.html', :to => 'survivalkit/formalize/formalize_jquery_demo.html'
html 'files/html/formalize_jquery_disabled.html', :to => 'survivalkit/formalize/formalize_jquery_disabled.html'
html 'files/html/formalize_jquery_errors.html', :to => 'survivalkit/formalize/formalize_jquery_errors.html'

html 'files/htaccess', :to => '.htaccess'
html 'files/crossdomain.xml', :to => 'crossdomain.xml'
html 'files/robots.txt', :to => 'robots.txt'
html 'files/humans.txt', :to => 'humans.txt'
html 'files/apple-touch-icon.png', :to => 'apple-touch-icon.png'
html 'files/favicon.ico', :to => 'favicon.ico'

discover :javascripts


help %Q{
This is a Compass extension for The Coding Designer's Survival Kit by Mason Wendell
(See full docs at: http://github.com/sporkd/compass-html5-boilerplate)

Stand Alone Installation
========================
$ gem install survivalkit
$ compass create my_project -r survivalkit -u survivalkit --javascripts-dir js --css-dir css

}

welcome_message %Q{
You've installed The Coding Designer's Survival Kit. Good for you!

}
