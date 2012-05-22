description "Tools for desiging in the browser: The Coding Designer's Survival Kit"

stylesheet 'style.sass', :media => 'all'
stylesheet 'selectivizr.sass', :media => 'all'
stylesheet 'ie.sass', :media => 'all'
stylesheet 'partials/01-variables/_all.sass'
stylesheet 'partials/01-variables/_base.sass'
stylesheet 'partials/01-variables/_colors.sass'
stylesheet 'partials/01-variables/_fonts.sass'
stylesheet 'partials/02-reset/_reset.sass'
stylesheet 'partials/03-extend/_all.sass'
stylesheet 'partials/03-extend/_typography.sass'
stylesheet 'partials/04-defaults/_all.sass'
stylesheet 'partials/04-defaults/_common.sass'
stylesheet 'partials/04-defaults/_edits.sass'
stylesheet 'partials/04-defaults/_font-face.sass'
stylesheet 'partials/04-defaults/_headers.sass'
stylesheet 'partials/04-defaults/_images.sass'
stylesheet 'partials/04-defaults/_semantics.sass'
stylesheet 'partials/04-defaults/_tables.sass'
stylesheet 'partials/04-defaults/forms/_form-defaults.sass'
stylesheet 'partials/04-defaults/forms/_formalize.sass'
stylesheet 'partials/05-grids/_grids-susy.sass'
stylesheet 'partials/06-ui-patterns/_common.sass'
stylesheet 'partials/06-ui-patterns/_drupal-patterns.sass'
stylesheet 'partials/07-sprites/_sprites.sass'
# stylesheet 'partials/08-your-design-here/_design.sass'
stylesheet 'partials/09-styletile/_tile-design.sass'
stylesheet 'partials/10-media/_print.sass'
stylesheet 'partials/11-browser-adjustments/_ie.sass'
stylesheet 'partials/11-browser-adjustments/_modernizr.sass'
stylesheet 'partials/11-browser-adjustments/_selectivizr.sass'
stylesheet 'your-design-here/_design.sass'
# discover :stylesheets

discover :javascripts

image 'survival-kit-logo.png'
image 'drupal/arrow-asc.png'
image 'drupal/arrow-desc.png'
image 'drupal/background.png'
image 'drupal/close.png'
image 'drupal/configure.png'
image 'drupal/draggable.png'
image 'drupal/druplicon.png'
image 'drupal/feed.png'
image 'drupal/forum-icons.png'
image 'drupal/gear-select.png'
image 'drupal/grippie.png'
image 'drupal/help.png'
image 'drupal/hook.png'
image 'drupal/lock.png'
image 'drupal/menu-collapsed-rtl.png'
image 'drupal/menu-collapsed.png'
image 'drupal/menu-expanded.png'
image 'drupal/menu-leaf.png'
image 'drupal/message-16-error.png'
image 'drupal/message-16-help.png'
image 'drupal/message-16-info.png'
image 'drupal/message-16-ok.png'
image 'drupal/message-16-warning.png'
image 'drupal/message-24-error.png'
image 'drupal/message-24-help.png'
image 'drupal/message-24-info.png'
image 'drupal/message-24-ok.png'
image 'drupal/message-24-warning.png'
image 'drupal/permissions.png'
image 'drupal/powered-black-135x42.png'
image 'drupal/powered-black-80x15.png'
image 'drupal/powered-black-88x31.png'
image 'drupal/powered-blue-135x42.png'
image 'drupal/powered-blue-80x15.png'
image 'drupal/powered-blue-88x31.png'
image 'drupal/powered-gray-135x42.png'
image 'drupal/powered-gray-80x15.png'
image 'drupal/powered-gray-88x31.png'
image 'drupal/progress.gif'
image 'drupal/throbber.gif'
image 'drupal/tree-bottom.png'
image 'drupal/tree.png'
image 'drupal/watchdog-error.png'
image 'drupal/watchdog-ok.png'
image 'drupal/watchdog-warning.png'

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
