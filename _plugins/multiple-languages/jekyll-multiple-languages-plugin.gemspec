# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plugin/version'

Gem::Specification.new do |s|
  s.name             = "jekyll-multiple-languages-plugin"
  s.version          = Jekyll::MultipleLanguagesPlugin::VERSION
  s.license          = "MIT"

  s.summary          = %q{I18n plugin for Jekyll}
  s.description      = %q{Plugin for Jekyll 2.x and 3.x that adds support for translated keys, templates and posts.}

  s.authors          = ["Martin Kurtsson", "Yonatan Miller"]
  s.email            = ["martin.kurtsson@daresay.co", "yonatan@shushugah.com"]
  s.homepage         = "https://github.com/kurtsson/jekyll-multiple-languages-plugin/"

  all_files          = `git ls-files -z`.split("\x0")
  s.files            = all_files.grep(%r{^lib/})
#  s.executables      = all_files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths    = ["lib"]

  s.rdoc_options     = ['--charset=UTF-8']
  s.extra_rdoc_files = %w[README.md LICENSE.txt]

  s.add_development_dependency "bundler", "~> 2.0.1"
  s.add_development_dependency "html-proofer"
  s.add_development_dependency "rake",    "~> 0"

  s.add_runtime_dependency     "jekyll",  ">= 2.0", "< 5.0"
end
