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
  s.files += ["LICENSE"]
  s.files += ["VERSION"]
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/survivalkit/**/*.*")
  s.files += Dir.glob("templates/project/**/*.*")
  s.files += Dir.glob("templates/test/**/*.*")

  # Gem Bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11.5"])
end