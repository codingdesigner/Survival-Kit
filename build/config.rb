#
# Compass Configuration
#

require 'susy'
require 'modular-scale'
require 'color-schemer'
require 'breakpoint'

# HTTP paths
http_path             = '/'
# http_stylesheets_path = '/css'
http_images_path      = '../templates/project/files/images'
# http_javascripts_path = '/js'

# File system locations
sass_dir              = '../templates/shared'
add_import_path         '../stylesheets'
css_dir               = 'public/css'
images_dir            = 'public/images'
javascripts_dir       = 'public/js'
fonts_dir             = 'public/fonts'

# Set to true for easier debugging
line_comments         = false
preferred_syntax      = :sass

# CSS output style - :nested, :expanded, :compact, or :compressed
output_style          = :expanded

# Determine whether Compass asset helper functions generate relative
# or absolute paths
relative_assets       = true

# Learn more:
#   http://compass-style.org/docs/tutorials/configuration-reference/


Compass::BrowserSupport.add_support("repeating-linear-gradient", "webkit", "moz", "ms")
