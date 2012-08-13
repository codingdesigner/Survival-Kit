description "Tools for desiging in the browser: The Coding Designer's Survival Kit"

# Stylesheets
file '../shared/style.scss', :like => :stylesheet, :media => 'all', :to => 'style.scss'
file '../shared/survivalkit/drupal7.scss', :like => :stylesheet, :media => 'all', :to => 'survivalkit/drupal7.scss'
file '../shared/survivalkit/survivalkit.scss', :like => :stylesheet, :media => 'all', :to => 'survivalkit/survivalkit.scss'
file '../shared/partials/01-variables/_all.scss', :like => :stylesheet, :to => 'partials/01-variables/_all.scss'
file '../shared/partials/01-variables/_base.scss', :like => :stylesheet, :to => 'partials/01-variables/_base.scss'
file '../shared/partials/01-variables/_colors.scss', :like => :stylesheet, :to => 'partials/01-variables/_colors.scss'
file '../shared/partials/01-variables/_fonts.scss', :like => :stylesheet, :to => 'partials/01-variables/_fonts.scss'
file '../shared/partials/02-mixins/_custom.scss', :like => :stylesheet, :to => 'partials/02-mixins/_custom.scss'
file '../shared/partials/03-extend/_all.scss', :like => :stylesheet, :to => 'partials/03-extend/_all.scss'
file '../shared/partials/03-extend/_helpers.scss', :like => :stylesheet, :to => 'partials/03-extend/_helpers.scss'
file '../shared/partials/03-extend/_typography.scss', :like => :stylesheet, :to => 'partials/03-extend/_typography.scss'
file '../shared/partials/04-base/_all.scss', :like => :stylesheet, :to => 'partials/04-base/_all.scss'
file '../shared/partials/04-base/_common.scss', :like => :stylesheet, :to => 'partials/04-base/_common.scss'
file '../shared/partials/04-base/_edits.scss', :like => :stylesheet, :to => 'partials/04-base/_edits.scss'
file '../shared/partials/04-base/_font-face.scss', :like => :stylesheet, :to => 'partials/04-base/_font-face.scss'
file '../shared/partials/04-base/_headers.scss', :like => :stylesheet, :to => 'partials/04-base/_headers.scss'
file '../shared/partials/04-base/_images.scss', :like => :stylesheet, :to => 'partials/04-base/_images.scss'
file '../shared/partials/04-base/_semantics.scss', :like => :stylesheet, :to => 'partials/04-base/_semantics.scss'
file '../shared/partials/04-base/_tables.scss', :like => :stylesheet, :to => 'partials/04-base/_tables.scss'
file '../shared/partials/04-base/_form-defaults.scss', :like => :stylesheet, :to => 'partials/04-base/_form-defaults.scss'
file '../shared/partials/05-layout/_grids-susy.scss', :like => :stylesheet, :to => 'partials/05-layout/_grids-susy.scss'
file '../shared/partials/06-ui-patterns/_common.scss', :like => :stylesheet, :to => 'partials/06-ui-patterns/_common.scss'
file '../shared/partials/06-ui-patterns/_drupal-patterns.scss', :like => :stylesheet, :to => 'partials/06-ui-patterns/_drupal-patterns.scss'
file '../shared/partials/07-styletile/_tile-design.scss', :like => :stylesheet, :to => 'partials/07-styletile/_tile-design.scss'
file '../shared/partials/08-media/_print.scss', :like => :stylesheet, :to => 'partials/08-media/_print.scss'
file '../shared/your-design-here/_design.scss', :like => :stylesheet, :to => 'your-design-here/_design.scss'
# discover :stylesheets

html 'files/html/index.html', :to => 'index.html'
html 'files/html/404.html', :to => '404.html'
html 'files/html/survivalkit/index.html', :to => 'survivalkit/index.html'
html 'files/html/survivalkit/elements-common.html', :to => 'survivalkit/elements-common.html'
html 'files/html/survivalkit/elements-html5.html', :to => 'survivalkit/elements-html5.html'
html 'files/html/survivalkit/elements-ui-patterns-drupal.html', :to => 'survivalkit/elements-ui-patterns-drupal.html'
html 'files/html/survivalkit/elements-ui-patterns-drupal-css.html', :to => 'survivalkit/elements-ui-patterns-drupal-css.html'
html 'files/html/survivalkit/elements-ui-patterns.html', :to => 'survivalkit/elements-ui-patterns.html'
html 'files/html/survivalkit/elements-typography.html', :to => 'survivalkit/elements-typography.html'
html 'files/html/survivalkit/styletile/styletile.html', :to => 'survivalkit/styletile/styletile.html'

html 'files/html/formalize_jquery_demo.html', :to => 'survivalkit/formalize/formalize_jquery_demo.html'
html 'files/html/formalize_jquery_disabled.html', :to => 'survivalkit/formalize/formalize_jquery_disabled.html'
html 'files/html/formalize_jquery_errors.html', :to => 'survivalkit/formalize/formalize_jquery_errors.html'

html 'files/htaccess.htaccess', :to => '.htaccess'
html 'files/crossdomain.xml', :to => 'crossdomain.xml'
html 'files/robots.txt', :to => 'robots.txt'
html 'files/humans.txt', :to => 'humans.txt'
html 'files/apple-touch-icon.png', :to => 'apple-touch-icon.png'
html 'files/apple-touch-icon-72x72-precomposed.png', :to => 'apple-touch-icon-72x72-precomposed.png'
html 'files/apple-touch-icon-114x114-precomposed.png', :to => 'apple-touch-icon-114x114-precomposed.png'
html 'files/favicon.ico', :to => 'favicon.ico'

discover :javascripts

file '../shared/survival-kit-logo.png', :like => :image, :to => 'survival-kit-logo.png'
file '../shared/formalize/button.png', :like => :image, :to => 'formalize/button.png'
file '../shared/formalize/select_arrow.gif', :like => :image, :to => 'formalize/select_arrow.gif'
file '../shared/drupal/arrow-asc.png', :like => :image, :to => 'drupal/arrow-asc.png'
file '../shared/drupal/arrow-desc.png', :like => :image, :to => 'drupal/arrow-desc.png'
file '../shared/drupal/background.png', :like => :image, :to => 'drupal/background.png'
file '../shared/drupal/close.png', :like => :image, :to => 'drupal/close.png'
file '../shared/drupal/configure.png', :like => :image, :to => 'drupal/configure.png'
file '../shared/drupal/draggable.png', :like => :image, :to => 'drupal/draggable.png'
file '../shared/drupal/druplicon.png', :like => :image, :to => 'drupal/druplicon.png'
file '../shared/drupal/feed.png', :like => :image, :to => 'drupal/feed.png'
file '../shared/drupal/forum-icons.png', :like => :image, :to => 'drupal/forum-icons.png'
file '../shared/drupal/gear-select.png', :like => :image, :to => 'drupal/gear-select.png'
file '../shared/drupal/grippie.png', :like => :image, :to => 'drupal/grippie.png'
file '../shared/drupal/help.png', :like => :image, :to => 'drupal/help.png'
file '../shared/drupal/hook.png', :like => :image, :to => 'drupal/hook.png'
file '../shared/drupal/lock.png', :like => :image, :to => 'drupal/lock.png'
file '../shared/drupal/menu-collapsed-rtl.png', :like => :image, :to => 'drupal/menu-collapsed-rtl.png'
file '../shared/drupal/menu-collapsed.png', :like => :image, :to => 'drupal/menu-collapsed.png'
file '../shared/drupal/menu-expanded.png', :like => :image, :to => 'drupal/menu-expanded.png'
file '../shared/drupal/menu-leaf.png', :like => :image, :to => 'drupal/menu-leaf.png'
file '../shared/drupal/message-16-error.png', :like => :image, :to => 'drupal/message-16-error.png'
file '../shared/drupal/message-16-help.png', :like => :image, :to => 'drupal/message-16-help.png'
file '../shared/drupal/message-16-info.png', :like => :image, :to => 'drupal/message-16-info.png'
file '../shared/drupal/message-16-ok.png', :like => :image, :to => 'drupal/message-16-ok.png'
file '../shared/drupal/message-16-warning.png', :like => :image, :to => 'drupal/message-16-warning.png'
file '../shared/drupal/message-24-error.png', :like => :image, :to => 'drupal/message-24-error.png'
file '../shared/drupal/message-24-help.png', :like => :image, :to => 'drupal/message-24-help.png'
file '../shared/drupal/message-24-info.png', :like => :image, :to => 'drupal/message-24-info.png'
file '../shared/drupal/message-24-ok.png', :like => :image, :to => 'drupal/message-24-ok.png'
file '../shared/drupal/message-24-warning.png', :like => :image, :to => 'drupal/message-24-warning.png'
file '../shared/drupal/permissions.png', :like => :image, :to => 'drupal/permissions.png'
file '../shared/drupal/powered-black-135x42.png', :like => :image, :to => 'drupal/powered-black-135x42.png'
file '../shared/drupal/powered-black-80x15.png', :like => :image, :to => 'drupal/powered-black-80x15.png'
file '../shared/drupal/powered-black-88x31.png', :like => :image, :to => 'drupal/powered-black-88x31.png'
file '../shared/drupal/powered-blue-135x42.png', :like => :image, :to => 'drupal/powered-blue-135x42.png'
file '../shared/drupal/powered-blue-80x15.png', :like => :image, :to => 'drupal/powered-blue-80x15.png'
file '../shared/drupal/powered-blue-88x31.png', :like => :image, :to => 'drupal/powered-blue-88x31.png'
file '../shared/drupal/powered-gray-135x42.png', :like => :image, :to => 'drupal/powered-gray-135x42.png'
file '../shared/drupal/powered-gray-80x15.png', :like => :image, :to => 'drupal/powered-gray-80x15.png'
file '../shared/drupal/powered-gray-88x31.png', :like => :image, :to => 'drupal/powered-gray-88x31.png'
file '../shared/drupal/progress.gif', :like => :image, :to => 'drupal/progress.gif'
file '../shared/drupal/throbber.gif', :like => :image, :to => 'drupal/throbber.gif'
file '../shared/drupal/tree-bottom.png', :like => :image, :to => 'drupal/tree-bottom.png'
file '../shared/drupal/tree.png', :like => :image, :to => 'drupal/tree.png'
file '../shared/drupal/watchdog-error.png', :like => :image, :to => 'drupal/watchdog-error.png'
file '../shared/drupal/watchdog-ok.png', :like => :image, :to => 'drupal/watchdog-ok.png'
file '../shared/drupal/watchdog-warning.png', :like => :image, :to => 'drupal/watchdog-warning.png'

help %Q{
This is a Compass extension for The Coding Designer's Survival Kit by Mason Wendell

Stand Alone Installation
========================
$ gem install survivalkit
$ compass create my_project -r survivalkit -u survivalkit --javascripts-dir js --css-dir css

}

welcome_message %Q{
You've installed The Coding Designer's Survival Kit. Good for you!

}
