require './lib/survivalkit'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = SurvivalKit::VERSION
  s.date = SurvivalKit::DATE

  # Gem Details
  s.name = "survivalkit"
  s.description = %q{The Coding Designer's Survival Kit - tools for designing websites in the browser.}
  s.summary = %q{The Coding Designer's Survival Kit }
  s.authors = ["Mason Wendell"]
  s.email = ["mason@zivtech.com"]
  s.homepage = "http://thecodingdesigner.com"

  # Gem Files
  s.files = ["README.markdown"]
  s.files += ["CHANGELOG.markdown"]
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/clean/**/*.*")
  s.files += Dir.glob("templates/drupal/**/*.*")
  s.files += Dir.glob("templates/project/**/*.*")
  s.files += Dir.glob("templates/shared/**/*.*")

  # Gem Bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.12.2"])
  s.add_dependency("breakpoint", [">= 1.2"])
  s.add_dependency("modular-scale", [">= 1.0"])
  s.add_dependency("color-schemer", [">= 0.1"])
  s.add_dependency("singularitygs", [">= 0.0.17"])
  s.add_dependency("susy", [">= 1.0"])
end
