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

html 'index.html.haml'
html 'files/htaccess', :to => '.htaccess'
html 'files/crossdomain.xml', :to => 'crossdomain.xml'
html 'files/robots.txt', :to => 'robots.txt'
html 'files/humans.txt', :to => 'humans.txt'
html 'files/apple-touch-icon.png', :to => 'apple-touch-icon.png'
html 'files/favicon.ico', :to => 'favicon.ico'
html 'files/html/404.html', :to => '404.html'
html 'files/html/elements-common.html', :to => 'survivalkit/elements-common.html'
html 'files/html/elements-html5.html', :to => 'survivalkit/elements-html5.html'
html 'files/html/elements-ui-patterns-drupal.html', :to => 'survivalkit/elements-ui-patterns-drupal.html'
html 'files/html/elements-ui-patterns.html', :to => 'survivalkit/elements-ui-patterns.html'
html 'files/html/elements-typography.html', :to => 'survivalkit/elements-typography.html'
html 'files/html/styletile.html', :to => 'survivalkit/styletile.html'
html 'files/html/formalize_jquery_demo.html', :to => 'survivalkit/formalize/formalize_jquery_demo.html'
html 'files/html/formalize_jquery_disabled.html', :to => 'survivalkit/formalize/formalize_jquery_disabled.html'
html 'files/html/formalize_jquery_errors.html', :to => 'survivalkit/formalize/formalize_jquery_errors.html'
# javascript 'javascripts/kit/kit-source.jquery.js', :to => 'kit/kit-source.jquery.js'
# javascript 'javascripts/libs/jquery-1.6.min.js', :to => 'libs/jquery.min.js'
# javascript 'javascripts/libs/modernizr-2.0.min.js', :to => 'libs/modernizr.min.js'
# javascript 'javascripts/libs/mootools-core-1.3.1-full-compat-yc.js', :to => 'libs/mootools.js'
# # javascript 'javascripts/libs/plugins.js', :to => 'libs/plugins.js'
# javascript 'javascripts/libs/respond.min.js', :to => 'libs/respond.min.js'
# javascript 'javascripts/libs/selectivizr.js', :to => 'libs/selectivizr.js'
# javascript 'javascripts/script.js', :to => 'script.js'
discover :javascripts


# if Compass.configuration.project_type == :rails
#   file 'application.html.haml', :to => 'app/views/layouts/application.html.haml'
#   file '_flashes.html.haml', :to => 'app/views/layouts/_flashes.html.haml'
#   file '_footer.html.haml', :to => 'app/views/layouts/_footer.html.haml'
#   file '_head.html.haml', :to => 'app/views/layouts/_head.html.haml'
#   file '_header.html.haml', :to => 'app/views/layouts/_header.html.haml'
#   file '_javascripts.html.haml', :to => 'app/views/layouts/_javascripts.html.haml'
#   file '_stylesheets.html.haml', :to => 'app/views/layouts/_stylesheets.html.haml'
#   file 'files/google.yml', :to => 'config/google.yml'
#   javascript 'javascripts/jquery-1.6.js', :to => 'jquery.js'
#   javascript 'javascripts/jquery-1.6.min.js', :to => 'jquery.min.js'
#   javascript 'javascripts/modernizr-1.7.min.js', :to => 'modernizr.min.js'
#   javascript 'javascripts/respond.min.js', :to => 'respond.min.js'
#   javascript 'javascripts/plugins.js', :to => 'plugins.js'
#   javascript 'javascripts/rails.js', :to => 'rails.js'
# else
#   html 'index.html.haml'
#   file 'index.html.haml'
#   javascript 'javascripts/jquery-1.6.min.js', :to => 'jquery.min.js'
#   javascript 'javascripts/modernizr-1.7.min.js', :to => 'modernizr.min.js'
#   javascript 'javascripts/respond.min.js', :to => 'respond.min.js'
#   javascript 'javascripts/plugins.js', :to => 'plugins.js'
#   javascript 'javascripts/script.js', :to => 'script.js'
# end
# html 'files/404.html', :to => '404.html'
# html 'files/htaccess', :to => '.htaccess'
# html 'files/crossdomain.xml', :to => 'crossdomain.xml'
# html 'files/robots.txt', :to => 'robots.txt'
# html 'files/humans.txt', :to => 'humans.txt'
# html 'files/apple-touch-icon.png', :to => 'apple-touch-icon.png'
# html 'files/favicon.ico', :to => 'favicon.ico'

help %Q{
This is a Compass extension for HTML5 Boilerplate by Paul Irish
(See full docs at: http://github.com/sporkd/compass-html5-boilerplate)

Rails Installation
========================
$ gem install html5-boilerplate
$ cd my_rails_project
$ compass init rails -r html5-boilerplate -u html5-boilerplate --force

Stand Alone Installation
========================
$ gem install html5-boilerplate
$ compass create my_project -r html5-boilerplate -u html5-boilerplate --javascripts-dir js --css-dir css

}

welcome_message %Q{
You've installed HTML5 Boilerplate. Good for you!

}
